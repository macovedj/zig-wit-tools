const std = @import("std");
const token = @import("token.zig");

pub fn ast(tokens: std.ArrayList(token.Token)) !void {
  for (tokens.items) |tok| {
    std.debug.print("THE TOKEN KIND {any}\n", .{tok.kind});
    std.debug.print("THE TOKEN VAL {s}\n", .{tok.val});
  }
}