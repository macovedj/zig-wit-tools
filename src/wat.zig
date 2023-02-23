const std = @import("std");
const AST = @import("ast.zig");
var gpa = std.heap.GeneralPurposeAllocator(.{}){};

pub fn genWat(ast: AST.AST) !void {
  // std.debug.print("THE AST {any}", .{ast.interfaces});
  var wat = std.ArrayList([]const u8).init(gpa.allocator());
  try wat.append("(component\n");
  try wat.append("  (type (export \"example\") (component\n");
  for (ast.interfaces) |interface| {
    const interfaceWat = try genInterface(interface);
    try wat.append(interfaceWat);
  }
  const flags = std.fs.File.OpenFlags { .mode = std.fs.File.OpenMode.read_write };
  const file = try std.fs.cwd().openFile("output.wat", flags);
  for (wat.items) |word| {
    _ = try file.write(word);
  }
}

fn genInterface(interface: AST.Interface) ![]u8 {
  std.debug.print("THE INTERFACE {any}", .{interface});
  const name = interface.name;
  var interfaceWatBuffer = std.ArrayList(u8).init(gpa.allocator());
  _ = try interfaceWatBuffer.writer().write("   (type $");
  _ = try interfaceWatBuffer.writer().write(name);
  _ = try interfaceWatBuffer.writer().write(" (instance\n");
  const defs = interface.defs;
  for (defs) |def| {
    switch (def) {
      .record => {
        std.debug.print("ITS A RECORD {}\n", .{def.record});
        const recordName = def.record.name;
        var recordBuffer = std.ArrayList(u8).init(gpa.allocator());
        _ = try recordBuffer.writer().write("     (type $");
        _ = try recordBuffer.writer().write(recordName);
        _ = try recordBuffer.writer().write(" (record");
        for (def.record.entries) |entry| {
          _ = try recordBuffer.writer().write(" (field ");
          _ = try recordBuffer.writer().write(entry.field);
          _ = try recordBuffer.writer().write(" ");
          _ = try recordBuffer.writer().write(entry.value);
          _ = try recordBuffer.writer().write(")");
        }
        _ = try recordBuffer.writer().write("))\n");
        _ = try recordBuffer.writer().write("     (export \"");
        _ = try recordBuffer.writer().write(recordName);
        _ = try recordBuffer.writer().write("\" (type (eq $");
        _ = try recordBuffer.writer().write(recordName);
        _ = try recordBuffer.writer().write("))\n");
        _ = try interfaceWatBuffer.writer().write(recordBuffer.items);
      },
      .func => {
        std.debug.print("ITS A FUNC {}\n", .{def.func});
        const funcName = def.func.name;
        std.debug.print("FUNC NAME {s}", .{funcName});
        var funcBuffer = std.ArrayList(u8).init(gpa.allocator());
        _ = try funcBuffer.writer().write("     (export \"");
        _ = try funcBuffer.writer().write(funcName);
        _ = try funcBuffer.writer().write("\" (func ");
        const args = def.func.args;
        std.debug.print("THE ARGS {any}", .{args});
        for (args) |arg| {
          _ = try funcBuffer.writer().write("(param \"");
          _ = try funcBuffer.writer().write(arg.name);
          _ = try funcBuffer.writer().write("\" $");
          _ = try funcBuffer.writer().write(arg.kind);
          _ = try funcBuffer.writer().write(") ");
        }
        _ = try funcBuffer.writer().write("(result ");
        _ = try funcBuffer.writer().write(def.func.returnType);
        _ = try funcBuffer.writer().write(")))\n");
        std.debug.print("THE WHOLE FUNC BUFFER {s}", .{funcBuffer.items});
        _ = try interfaceWatBuffer.writer().write(funcBuffer.items);
      }
    }
  }
  _ = try interfaceWatBuffer.writer().write("   ))\n");
  _ = try interfaceWatBuffer.writer().write("  (export \"");
  _ = try interfaceWatBuffer.writer().write(name);
  _ = try interfaceWatBuffer.writer().write("\" (instance (type $");
  _ = try interfaceWatBuffer.writer().write(name);
  _ = try interfaceWatBuffer.writer().write(")))\n  ))\n)");
  // const nameExport = "(type " ++ name;
  std.debug.print("CONCATTED {s}", .{interfaceWatBuffer.items});
  // std.debug.print("THE NAME {s}", .{name});
  return interfaceWatBuffer.items;
}