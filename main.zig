const std = @import("std");
var gpa = std.heap.GeneralPurposeAllocator(.{}){};
const ArrayList = std.ArrayList;

const TokenType = enum {
  interface,
  literal,
};

const Token = struct {
  kind: TokenType,
  val: []const u8
};

const Case = enum {
  i,
  literal
};

fn tokenize(chars: []const u8) !ArrayList(Token) {
  var tokens = ArrayList(Token).init(gpa.allocator());
  const length = chars.len;
  std.debug.print("THIS IS THE LENGTH {}\n", .{length});

  var cur: u32 = 0;
  while (cur < length) {
    const case = std.meta.stringToEnum(Case, &[1]u8{chars[cur]}) orelse Case.literal;
    std.debug.print("stuff", .{});
    switch(case) {
      .i => {
        if (cur < length - 10) {
          const maybeInterface = chars[cur..(cur + 9)];
          std.debug.print("MAYBE INTERFACE {s}\n", .{maybeInterface});
          if (std.mem.eql(u8, maybeInterface, "interface")) {
            std.debug.print("ADDED A TOKEN", .{});
            try tokens.append(Token {
              .kind = TokenType.interface,
              .val = "interface"
          });
            cur += 10;
            // break;
          } else {
            cur += 1;
          }
        }
        // std.debug.print("IM IN THE I BRANCH {s}", .{maybeInterface});
      },
      .literal => {
        std.debug.print("LITERAL\n", .{});
        const start = cur;

        while (!std.mem.eql(u8, chars[cur..(cur + 1)], " ")) {
          std.debug.print("CURENT CHAR {any}", .{chars[cur..cur + 1]});
          cur += 1;
          if (cur >= length) {
            break;
          }
        }
        const literal = chars[start..cur];
        std.debug.print("MADE IT OUT OF WHILE", .{});
        try tokens.append(Token {
          .kind = TokenType.literal,
          .val = literal
        });
        cur += 1;
      },
      // else => {
      // }
    }
    // cur += 1;
    std.debug.print("THIS IS THE CUR {}\n", .{cur});
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
  const tokens  = try tokenize(&readbuf);
  for (tokens.items) |tok| {
    std.debug.print("THE TOKEN {s}\n", .{tok.val});

  }
}