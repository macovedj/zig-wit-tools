const std = @import("std");
var gpa = std.heap.GeneralPurposeAllocator(.{}){};
const ArrayList = std.ArrayList;

pub const TokenType = enum {
  colon,
  comma,
  func,
  interface,
  lcurl,
  lparen,
  literal,
  rcurl,
  rparen,
  record,
  unsigned32,
};

pub const Token = struct {
  kind: TokenType,
  val: []const u8
};

const Case = enum {
  f,
  i,
  literal,
  r,
  u,
  @"(",
  @")",
  @"{",
  @"}",
  @":",
  @",",
};

pub fn tokenize(chars: []const u8) !ArrayList(Token) {
  var tokens = ArrayList(Token).init(gpa.allocator());
  const length = chars.len;
  std.debug.print("THIS IS THE LENGTH {}\n", .{length});

  var cur: u32 = 0;
  while (cur < length) {
    var case = std.meta.stringToEnum(Case, &[1]u8{chars[cur]}) orelse Case.literal;
    std.debug.print("case {any}\n", .{case});
    switch(case) {
      .f => {
        if (cur < length - 5) {
          const maybeFunc = chars[cur..(cur + 4)];
          std.debug.print("MAYBE FUNC {s}\n", .{maybeFunc});
          if (std.mem.eql(u8, maybeFunc, "func")) {
            try tokens.append(Token {
              .kind = TokenType.func,
              .val = "func"
            });
            cur += 5;
          } else {
          // cur += 1;
            const lit = try lexLiteral(chars, cur);
            try tokens.append(lit);
            // case = Case.literal;
            cur += @intCast(u32, lit.val.len);
          }
        }
      },
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
          // std.debug.print("CURENT CHAR {s}\n", .{chars[cur..cur + 1]});
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
        try tokens.append(Token {
          .kind = TokenType.literal,
          .val = literal
        });
        std.debug.print("THIS IS THE CUR {} {s} \n", .{cur, literal});
        // if (start != cur - 1) {
        //   cur += 1;
        // }
      },
      .r => {
       if (cur < length - 7) {
          const maybeRecord = chars[cur..(cur + 6)];
          if (std.mem.eql(u8, maybeRecord, "record")) {
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
          if (std.mem.eql(u8, maybeU32, "u32")) {
            try tokens.append(Token {
              .kind = TokenType.unsigned32,
              .val = "u32"
            });
            cur += 3;
          } else {
            cur += 1;
          }
        } 
      },
      .@"(" => {
        try tokens.append(Token {
            .kind = TokenType.lparen,
            .val = "("
        });
        cur += 1;
      },
      .@")" => {
        try tokens.append(Token {
            .kind = TokenType.rparen,
            .val = ")"
        });
        cur += 1;
      },
      .@"{" => {
        try tokens.append(Token {
            .kind = TokenType.lcurl,
            .val = "{"
        });
        cur += 1;
      },
      .@"}" => {
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
      .@"," => {
        std.debug.print("COMMA\n", .{});
        try tokens.append(Token {
            .kind = TokenType.comma,
            .val = ","
        });
        cur += 1;
      },
    }
    // std.debug.print("THIS IS THE CUR {}\n", .{chars[cur]});
  }
  return tokens;
}

fn lexLiteral(chars: []const u8, i: u64) !Token {
  const start = i;
  var cur = i;
  const length = chars.len;
  while (
    !std.mem.eql(u8, chars[cur..(cur + 1)], " ") and
    !std.mem.eql(u8, chars[cur..(cur + 1)], "\n") and
    !std.mem.eql(u8, chars[cur..(cur + 1)], "\t") and
    !std.mem.eql(u8, chars[cur..(cur + 1)], ":")
    ) {
    // std.debug.print("CURENT CHAR {s}\n", .{chars[cur..cur + 1]});
    cur += 1;
    if (cur >= length) {
      break;
    }
  }

  if (start == cur
    // or start == cur - 1
    ) {
    cur += 1;
    // continue;
  }
  const literal = chars[start..cur];
  return Token {
    .kind = TokenType.literal,
    .val = literal
  };
}