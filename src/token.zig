const std = @import("std");
var gpa = std.heap.GeneralPurposeAllocator(.{}){};
const ArrayList = std.ArrayList;

const TokenType = enum {
  colon,
  interface,
  lcurl,
  literal,
  rcurl,
  record,
  unsigned32,
};

const Token = struct {
  kind: TokenType,
  val: []const u8
};

const Case = enum {
  i,
  literal,
  r,
  u,
  @"{",
  @"}",
  @":",
};

pub fn tokenize(chars: []const u8) !ArrayList(Token) {
  var tokens = ArrayList(Token).init(gpa.allocator());
  const length = chars.len;
  std.debug.print("THIS IS THE LENGTH {}\n", .{length});

  var cur: u32 = 0;
  while (cur < length) {
    const case = std.meta.stringToEnum(Case, &[1]u8{chars[cur]}) orelse Case.literal;
    std.debug.print("stuff {}\n", .{chars[cur]});
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

        while (
          !std.mem.eql(u8, chars[cur..(cur + 1)], " ") and
          !std.mem.eql(u8, chars[cur..(cur + 1)], "\n") and
          !std.mem.eql(u8, chars[cur..(cur + 1)], "\t") and
          !std.mem.eql(u8, chars[cur..(cur + 1)], ":")
          ) {
          std.debug.print("CURENT CHAR {s}\n", .{chars[cur..cur + 1]});
          cur += 1;
          if (cur >= length) {
            break;
          }
        }

        if (start == cur
          // or start == cur - 1
          ) {
          cur += 1;
          continue;
        }
        const literal = chars[start..cur];
        std.debug.print("MADE IT OUT OF WHILE {s}\n", .{literal});
        try tokens.append(Token {
          .kind = TokenType.literal,
          .val = literal
        });
        if (start != cur - 1) {
          cur += 1;
        }
      },
      .r => {
       if (cur < length - 7) {
          const maybeRecord = chars[cur..(cur + 6)];
          std.debug.print("MAYBE RECORD {s}\n", .{maybeRecord});
          if (std.mem.eql(u8, maybeRecord, "record")) {
            std.debug.print("ADDED A TOKEN", .{});
            try tokens.append(Token {
              .kind = TokenType.record,
              .val = "record"
          });
            cur += 7;
          } else {
            cur += 1;
          }
        } 
      },
      .u => {
        if (cur < length - 4) {
          const maybeU32 = chars[cur..(cur + 3)];
          std.debug.print("MAYBE unsigned {s}\n", .{maybeU32});
          if (std.mem.eql(u8, maybeU32, "u32")) {
            std.debug.print("ADDED A TOKEN", .{});
            try tokens.append(Token {
              .kind = TokenType.unsigned32,
              .val = "u32"
          });
            cur += 4;
          } else {
            cur += 1;
          }
        } 
      },
      .@"{" => {
        std.debug.print("LEFT CURL\n", .{});
        try tokens.append(Token {
            .kind = TokenType.lcurl,
            .val = "{"
        });
        cur += 1;
      },
      .@"}" => {
        std.debug.print("RIGHT CURL\n", .{});
        try tokens.append(Token {
            .kind = TokenType.rcurl,
            .val = "}"
        });
        cur += 1;
      },
      .@":" => {
        std.debug.print("COLON\n", .{});
        try tokens.append(Token {
            .kind = TokenType.colon,
            .val = ":"
        });
        cur += 1;
      },
    }
    // std.debug.print("THIS IS THE CUR {}\n", .{chars[cur]});
  }
  return tokens;
}

// pub fn main() !void {
//   var readbuf: [500]u8 = undefined;
//   const flags = std.fs.File.OpenFlags { .mode = std.fs.File.OpenMode.read_write };
//   const file = try std.fs.cwd().openFile("example.wit", flags);
//   _ = file.read(&readbuf) catch |err| {
//     std.debug.print("TEH READ ERROR: {}", .{err});
//     return;
//   };
//   const tokens  = try tokenize(&readbuf);
//   for (tokens.items) |tok| {
//     std.debug.print("THE TOKEN KIND {any}\n", .{tok.kind});
//     std.debug.print("THE TOKEN VAL {s}\n", .{tok.val});
//   }
// }