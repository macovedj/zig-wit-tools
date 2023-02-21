const std = @import("std");
fn foo() []const u8 {
  std.debug.print("HELLO THere", .{});
  return "hello";
}

pub fn main() void {
  _ = foo();
}