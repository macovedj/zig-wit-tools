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
  // std.debug.print("THIS IS THE AST {any}\n", .{witAst.interfaces});
  const record = witAst.interfaces[0].types[0];
  // std.debug.print("THE RECORD {any}", .{record});
  std.debug.print("THIS IS THE FIRST RECORD FIELD {s}\n", .{record.entries[0].field});
  std.debug.print("THIS IS THE FIRST RECORD VAL {s}\n", .{record.entries[0].value});
  std.debug.print("THIS IS THE SECOND RECORD FIELD {s}\n", .{record.entries[1].field});
  std.debug.print("THIS IS THE SECOND RECORD VAL {s}\n", .{record.entries[1].value});
}