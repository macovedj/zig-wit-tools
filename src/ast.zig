const std = @import("std");
const token = @import("token.zig");
var gpa = std.heap.GeneralPurposeAllocator(.{}){};

const AST = struct {
  interfaces: []Interface
};

const Interface = struct {
  name: []const u8,
};

pub fn buildAst(tokens: []token.Token) !AST {
  var interfaces = std.ArrayList(Interface).init(gpa.allocator());
  for (tokens) |tok, i| {
    // std.debug.print("THE TOKEN KIND {any}\n", .{tok.kind});
    // std.debug.print("THE TOKEN VAL {s}\n", .{tok.val});
    switch(tok.kind) {
      .interface => {
        const interface = buildInterface(tokens, i);
        // buildInterface(tokens, i);
        std.debug.print("ADDING AN INTERFACE TO THE AST {any}\n", .{interface});
        try interfaces.append(interface);
      },
      .colon => {},
      .lcurl => {},
      .literal => {},
      .rcurl => {},
      .record => {},
      .unsigned32 => {},
      // .colon => {}.
      // .colon => {}.
      // .colon => {}.
      // .colon => {}.
      // .colon => {}.
    }
  }
  return AST {
    .interfaces = interfaces.items
  };
}

fn buildInterface(tokens: []token.Token, i: u64) Interface {
  std.debug.print("BUILDING INTERFACE {any}\n", .{tokens[i].kind});
  const name = tokens[i + 1];
  std.debug.print("INTERFACE NAME {s}", .{name.val});
  const interface = Interface {
    .name = name.val
  };
  std.debug.print("TEH INTERFACE {any}", .{interface});
  return interface;
}