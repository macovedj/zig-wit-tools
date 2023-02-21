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
  _ = try interfaceWatBuffer.writer().write(" instance\n");
  // const nameExport = "(type " ++ name;
  std.debug.print("CONCATTED {s}", .{interfaceWatBuffer.items});
  // std.debug.print("THE NAME {s}", .{name});
  return interfaceWatBuffer.items;
}