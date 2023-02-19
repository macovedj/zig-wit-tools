const std = @import("std");

pub const Token = struct {
  tag: Tag,
  loc: Loc,

  pub const Loc = struct {
    start: usize,
    end: usize,
  };

  pub const keywords = std.ComptimeStringMap(Tag, .{
    .{ "interface", .keyword_interface},
    .{ "record", .keyword_record},
    .{ "func", .keyword_func},
  });

  pub const Tag = enum {
    eof,
    invalid,
    arrow,
    colon,
    comma,
    identifier,
    lcurl,
    lparen,
    rcurl,
    rparen,
    keyword_func,
    keyword_interface,
    keyword_record,
  };

  pub fn getKeyword(bytes: []const u8) ?Tag {
    return keywords.get(bytes);
  }

};

pub const Tokenizer = struct {
  buffer: [:0]const u8,
  index: usize,
  pending_invalid_token: ?Token,
  pub fn init(buffer: [:0]const u8) Tokenizer {
    // Skip the UTF-8 BOM if present
    const src_start: usize = if (std.mem.startsWith(u8, buffer, "\xEF\xBB\xBF")) 3 else 0;
    return Tokenizer{
        .buffer = buffer,
        .index = src_start,
        .pending_invalid_token = null,
    };
  }
  const State = enum {
    start,
    identifier,
  };

  pub fn next(self: *Tokenizer) !Token {
    if (self.pending_invalid_token) |token| {
        self.pending_invalid_token = null;
        return token;
    }

    var state: State = .start;
    var result = Token {
      .tag = .eof,
      .loc = .{
        .start = self.index,
        .end = undefined,
      },
    };
    // var seen_escape_digits: usize = undefined;
    // var remaining_code_units: usize = undefined;
    while (true) : (self.index += 1) {
      const c = self.buffer[self.index];
      switch (state) {
        .start => switch(c) {
          0 => {
            if (self.index != self.buffer.len) {
                result.tag = .invalid;
                result.loc.start = self.index;
                self.index += 1;
                result.loc.end = self.index;
                return result;
            }
            break;
          },
          ' ', '\n', '\t', '\r' => {
            result.loc.start = self.index + 1;
          },
          ':' => {
            result.tag = .colon;
            self.index += 1;
            break;
          },
          '-' => {
            std.debug.print("DASH", .{});
            if (self.buffer[self.index + 1] == '>') {
              std.debug.print("ARROW", .{});
              result.tag = .arrow;
              self.index += 2;
              break;
            }
            else {
              state = .identifier;
              result.tag = .identifier;
            }
          },
          ',' => {
            result.tag = .comma;
            self.index += 1;
            break;
          },
          '(' => {
            result.tag = .lparen;
            self.index += 1;
            break;
          },
          ')' => {
            result.tag = .rparen;
            self.index += 1;
            break;
          },
          '{' => {
            result.tag = .lcurl;
            self.index += 1;
            break;
          },
          '}' => {
            result.tag = .rcurl;
            self.index += 1;
            break;
          },
          'a'...'z', 'A'...'Z', '_' => {
              state = .identifier;
              result.tag = .identifier;
          },
          else => {}
        },
        .identifier => switch(c) {
          'a'...'z', 'A'...'Z', '-', '0'...'9' => {},
          else => {
            if (Token.getKeyword(self.buffer[result.loc.start..self.index])) |tag| {
              result.tag = tag;
            }
            break;
        },
        },
      }
    }
    if (result.tag == .eof) {
      if (self.pending_invalid_token) |token| {
        self.pending_invalid_token = null;
        return token;
      }
      result.loc.start = self.index;
    }

    result.loc.end = self.index;
    return result;
  }
};
// pub enum Token {
//     Whitespace,
//     Comment,

//     Equals,
//     Comma,
//     Colon,
//     Period,
//     Semicolon,
//     LeftParen,
//     RightParen,
//     LeftBrace,
//     RightBrace,
//     LessThan,
//     GreaterThan,
//     RArrow,
//     Star,

//     Use,
//     Type,
//     Func,
//     U8,
//     U16,
//     U32,
//     U64,
//     S8,
//     S16,
//     S32,
//     S64,
//     Float32,
//     Float64,
//     Char,
//     Record,
//     Flags,
//     Variant,
//     Enum,
//     Union,
//     Bool,
//     String_,
//     Option_,
//     Result_,
//     Future,
//     Stream,
//     List,
//     Underscore,
//     As,
//     From_,
//     Static,
//     Interface,
//     Tuple,
//     Implements,
//     Import,
//     Export,
//     World,
//     Default,
//     Pkg,
//     Self_,

//     Id,
//     ExplicitId,
// }

test "goofytest" {
  try testTokenize("interface", &.{ .keyword_interface });
}

fn testTokenize(source: [:0]const u8, expected_token_tags: []const Token.Tag) !void {
    var tokenizer = Tokenizer.init(source);
    for (expected_token_tags) |expected_token_tag| {
        const token = tokenizer.next();
        // std.debug.print("THE TOKEN {any}", .{token});
        try std.testing.expectEqual(expected_token_tag, token.tag);
    }
    // std.debug.print("BEFORE LAST TOKEN", .{});
    const last_token = tokenizer.next();
    // std.debug.print("THE LAST TOKEN {any}", .{last_token});
    try std.testing.expectEqual(Token.Tag.eof, last_token.tag);
    try std.testing.expectEqual(source.len, last_token.loc.start);
    try std.testing.expectEqual(source.len, last_token.loc.end);
}