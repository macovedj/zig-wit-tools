const std = @import("std");
const ast = @import("ast.zig");
const token = @import("token.zig");

pub fn main() !void {
  var readbuf: [500]u8 = undefined;
  const flags = std.fs.File.OpenFlags { .mode = std.fs.File.OpenMode.read_write };
  const file = try std.fs.cwd().openFile("example.wit", flags);
  _ = file.read(&readbuf) catch |err| {
    std.debug.print("TEH READ ERROR: {}", .{err});
    return;
  };
  const tokens  = try token.tokenize(&readbuf);
  
  const witAst = try ast.buildAst(tokens.items);
  std.debug.print("THIS IS THE AST {any}", .{witAst});
}