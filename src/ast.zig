const std = @import("std");
const token = @import("token.zig");
const parser = @import("parser.zig");
var gpa = std.heap.GeneralPurposeAllocator(.{}){};

const AST = struct {
  interfaces: []Interface
};

const Interface = struct {
  name: []const u8,
  defs: []WitDef
};

const Record = struct {
  name: []const u8,
  entries: []RecordEntry
};

const Func = struct {
  name: []const u8
};

const RecordEntry = struct {
  field: []const u8,
  value: []const u8
};

const WitDef = union {
  record: Record,
  func: Func
};

pub fn buildAst(tokens: []token.Token) !AST {
  var interfaces = std.ArrayList(Interface).init(gpa.allocator());
  for (tokens) |tok| {
    std.debug.print("THE TOKEN {any}\n", .{tok.kind});
    std.debug.print("THE TOKEN {s}\n", .{tok.val});
  }
  for (tokens) |tok, i| {
    // std.debug.print("THE TOKEN KIND {any}\n", .{tok.kind});
    // std.debug.print("THE TOKEN VAL {s}\n", .{tok.val});
    switch(tok.kind) {
      .colon => {},
      .comma => {},
      .func => {},
      .interface => {
        const interface = try buildInterface(tokens, i);
        // buildInterface(tokens, i);
        std.debug.print("ADDING AN INTERFACE TO THE AST {any}\n", .{interface});
        try interfaces.append(interface);
      },
      .lcurl => {},
      .lparen => {},
      .literal => {},
      .rcurl => {},
      .rparen => {},
      .record => {},
      .unsigned32 => {},
      // .colon => {},
      // .colon => {},
      // .colon => {},
      // .colon => {},
    }
  }
  return AST {
    .interfaces = interfaces.items
  };
}

fn buildInterface(tokens: []token.Token, start: u64) !Interface {
  var buildingInterface = true;
  var i = start;
  var defs = std.ArrayList(WitDef).init(gpa.allocator());
  std.debug.print("BUILDING INTERFACE {any}\n", .{tokens[i].kind});
  const name = tokens[i + 1];
  std.debug.print("INTERFACE NAME {s}\n", .{name.val});
  i += 3;
  while (buildingInterface) {
    switch (tokens[i].kind) {
      .colon => {},
      .comma => {},
      .func => {},
      .interface => {},
      .lcurl => {},
      .lparen => {},
      .literal => {
        std.debug.print("ENCOUTNERED LITERAL IN INTERFACE CONSTRUCTION {s} \n", .{tokens[i].val});
        const func = WitDef { .func = buildFunc(tokens, i) };
        try defs.append(func);
        buildingInterface = false;
      },
      .rcurl => {},
      .rparen => {},
      .record => {
        std.debug.print("BUILD A RECORD HERE \n", .{});
        const rec = try buildRecord(tokens, i);
        const record = WitDef { .record = rec };
        try defs.append(record);
        std.debug.print("THE RECORD {any}\n", .{record});
        const size = rec.entries.len;
        std.debug.print("SIZE OF THE RECORD {}\n", .{size});
        i += 4 * (size + 1);
        std.debug.print("THE NEXT TOKEN {}\n", .{tokens[i].kind});
      },
      .unsigned32 => {},
    }
    std.debug.print("NEXT TOK {any}\n", .{tokens[i]});
  }
  const interface = Interface {
    .name = name.val,
    .defs = defs.items
  };
  // std.debug.print("TEH INTERFACE {any}\n", .{interface});
  return interface;
}

fn buildRecord(tokens: []token.Token, start: u64) !Record {
  var buildingRecord = true;
  var i = start + 1;
  const name = tokens[i].val;
  i += 2;
  std.debug.print("NEXT TOK IN RECORD BUILDING {s}\n", .{tokens[i].val});
  var entries = std.ArrayList(RecordEntry).init(gpa.allocator());
  while (buildingRecord) {
    const entry = buildRecordEntry(tokens, i);
    i += 2;
    try entries.append(entry);
    if (tokens[i + 2].kind != token.TokenType.literal) {
      buildingRecord = false;
    }
    i += 2;
  }
  return Record {
    .name = name,
    .entries = entries.items
  };
}

fn buildRecordEntry(tokens: []token.Token, start: u64) RecordEntry {
  var i = start;
  const field = tokens[i].val;
  const value = tokens[i + 2].val;
  // std.debug.print("NEXT TOK IN ENTRY BUILDING {s}\n", .{tokens[i].val});
  return RecordEntry {
    .field = field,
    .value = value
  };
}

fn buildFunc(tokens: []token.Token, start: u64) Func {
  var i = start;
  const name = tokens[i].val;
  i += 1;
  std.debug.print("NEXT FUNC TOKEN {s}\n", .{tokens[i].val});
  return Func {
    .name = name
  };
}