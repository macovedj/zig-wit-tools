const std = @import("std");
const AST = @import("ast.zig");
var gpa = std.heap.GeneralPurposeAllocator(.{}){};

pub fn genWat(ast: AST.AST) !void {
  // std.debug.print("THE AST {any}", .{ast.interfaces});
  var wat = std.ArrayList([]const u8).init(gpa.allocator());
  try wat.append("(component\n");
  try wat.append("  (type (export \"example\") (component\n");
  for (ast.interfaces) |interface| {
    std.debug.print("THE ITNERFACE {any}", .{interface});
    const name = interface.name;
    std.debug.print("THE NAME {s}", .{name});
  }
  const flags = std.fs.File.OpenFlags { .mode = std.fs.File.OpenMode.read_write };
  const file = try std.fs.cwd().openFile("output.wat", flags);
  for (wat.items) |word| {
    _ = try file.write(word);
  }
}