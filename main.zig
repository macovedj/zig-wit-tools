const std = @import("std");
var gpa = std.heap.GeneralPurposeAllocator(.{}){};
const ArrayList = std.ArrayList;

const Token = enum {
  LCURL
};

const Case = enum {
  i
};

fn tokenize(chars: []const u8) ArrayList(Token) {
  var tokens = ArrayList(Token).init(gpa.allocator());
  for (chars) |char| {
    // std.debug.print("THE CHAR {}", .{char});
    const case = std.meta.stringToEnum(Case, &[1]u8{char}) orelse Case.i;
    // orelse {
    //   Case.i;
    // };
    switch(case) {
      .i => {
        std.debug.print("IM IN THE I BRANCH", .{});
      },
      // else => {

      // }
    }
  }
  return tokens;
}

pub fn main() !void {
  var readbuf: [500]u8 = undefined;
  const flags = std.fs.File.OpenFlags { .mode = std.fs.File.OpenMode.read_write };
  const file = try std.fs.cwd().openFile("example.wit", flags);
  _ = file.read(&readbuf) catch |err| {
    std.debug.print("TEH READ ERROR: {}", .{err});
    return;
  };
  _ = tokenize(&readbuf);
  // std.debug.print("THE TOKENS {}", .{tokens});
}