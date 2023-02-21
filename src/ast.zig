const std = @import("std");
const parser = @import("parser.zig");
var gpa = std.heap.GeneralPurposeAllocator(.{}){};

pub const AST = struct {
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
  name: []const u8,
  args: []Arg,
  returnType: []const u8
};

const Arg = struct {
  name: []const u8,
  kind: []const u8
};

const RecordEntry = struct {
  field: []const u8,
  value: []const u8
};

const WitDef = union {
  record: Record,
  func: Func
};

pub fn buildAst(source: [:0]u8, tokens: []parser.Token) !AST {
  std.debug.print("THE SOURCE: {s}", .{source});
  var interfaces = std.ArrayList(Interface).init(gpa.allocator());
  for (tokens) |tok, i| {
    std.debug.print("THE TOKEN {s}\n", .{source[tok.loc.start..tok.loc.end]});
    // std.debug.print("THE TOKEN KIND {any}\n", .{tok.kind});
    // std.debug.print("THE TOKEN VAL {s}\n", .{tok.val});
    switch(tok.tag) {
      .eof => {},
      .invalid => {},
      .arrow => {},
      .colon => {},
      .comma => {},
      .identifier => {},
      .lcurl => {},
      .lparen => {},
      .rcurl => {},
      .rparen => {},
      .keyword_func => {},
      .keyword_interface => {
        const interface = try buildInterface(source, tokens, i);
        // // buildInterface(tokens, i);
        // std.debug.print("ADDING AN INTERFACE TO THE AST {any}\n", .{interface});
        try interfaces.append(interface);
      },
      .keyword_record => {},
    }
  }
  return AST {
    .interfaces = interfaces.items
  };
}

fn buildInterface(source: [:0]u8, tokens: []parser.Token, start: u64) !Interface {
  std.debug.print("SOME THINGS {s}\n{}\n", .{source, start});
  var buildingInterface = true;
  var i = start;
  var defs = std.ArrayList(WitDef).init(gpa.allocator());
  var name: []const u8 = undefined;

  while (buildingInterface) {
    const tok = tokens[i];
    switch (tok.tag) {
      .eof => {},
      .invalid => {},
      .arrow => {},
      .colon => {},
      .comma => {},
      .identifier => {
        buildingInterface = false;
        i += 1;
        std.debug.assert(tokens[i].tag == .colon);
        i += 1;
        std.debug.print("THE NEXT TOK {}", .{tokens[i].tag});
        switch(tokens[i].tag) {
          .eof => {},
          .invalid => {},
          .arrow => {},
          .colon => {},
          .comma => {},
          .identifier => {},
          .lcurl => {},
          .lparen => {},
          .rcurl => {},
          .rparen => {},
          .keyword_func => {
            const func = try buildFunc(source, tokens, i);
            std.debug.print("THE FUNC {any}", .{func});
            try defs.append(WitDef { .func = func });
          },
          .keyword_interface => {},
          .keyword_record => {},
        }
      },
      .lcurl => {
        std.debug.print("THE L CURL", .{});
        buildingInterface = false;
      },
      .lparen => {},
      .rcurl => {},
      .rparen => {},
      .keyword_func => {},
      .keyword_interface => {
        std.debug.print("IN INTERFACE BLOCK\n{}\n", .{tok});
        std.debug.assert(tokens[i + 1].tag == .identifier);
        std.debug.assert(tokens[i + 2].tag == .lcurl);
        const nameTok = tokens[i + 1];
        name = source[nameTok.loc.start..nameTok.loc.end];
        i += 3;
        std.debug.print("NEXT TOKEN {any}", .{tokens[i]});
        std.debug.print("NEXT TOKEN {s}", .{source[tokens[i].loc.start..tokens[i].loc.end]});
        switch(tokens[i].tag) {
          .eof => {},
          .invalid => {},
          .arrow => {},
          .colon => {},
          .comma => {},
          .identifier => {},
          .lcurl => {},
          .lparen => {},
          .rcurl => {},
          .rparen => {},
          .keyword_func => {},
          .keyword_interface => {},
          .keyword_record => {
            const record = try buildRecord(source, tokens, i);
            std.debug.print("THE CONSTRUCTED RECORD {any}\n", .{record.entries});
            try defs.append(WitDef { .record = record });
            const recordSize = record.entries.len;
            i += 4 * (recordSize + 1);
          },
        }
      },
      .keyword_record => {},
    }
  }
  const interface = Interface {
    .name = name,
    .defs = defs.items
  };
  // std.debug.print("TEH INTERFACE {any}\n", .{interface});
  return interface;
}

fn buildRecord(source: [:0]u8, tokens: []parser.Token, start: u64) !Record {
  var i = start;
  std.debug.assert(tokens[i].tag == .keyword_record);
  i += 1;
  const nameTok = tokens[i];
  std.debug.assert(tokens[i].tag == .identifier);

  const name = source[nameTok.loc.start..nameTok.loc.end];
  var buildingRecord = true;
  i += 2;
  var entries = std.ArrayList(RecordEntry).init(gpa.allocator());
  while (buildingRecord) {
    const entry = buildRecordEntry(source, tokens, i);
    i += 4;
    try entries.append(entry);
    if (tokens[i].tag == parser.Token.Tag.rcurl) {
      buildingRecord = false;
      i += 1;
    }
  }
  return Record {
    .name = name,
    .entries = entries.items
  };
}

fn buildRecordEntry(source: [:0]u8, tokens: []parser.Token, start: u64) RecordEntry {
  var i = start;
  const fieldTok = tokens[i];
  const valTok = tokens[i + 2];
  std.debug.assert(fieldTok.tag == .identifier);
  std.debug.assert(tokens[i + 1].tag == .colon);
  std.debug.assert(valTok.tag == .identifier);
  std.debug.assert(tokens[i + 3].tag == .comma);
  
  const field = source[fieldTok.loc.start..fieldTok.loc.end];
  const val = source[valTok.loc.start..valTok.loc.end];
  return RecordEntry {
    .field = field,
    .value = val
  };
}

fn buildFunc(source: [:0]u8, tokens: []parser.Token, start: u64) !Func {
  var i = start;
  const tok = tokens[i - 2];
  const name = source[tok.loc.start..tok.loc.end];
  std.debug.print("CUR TOK {}\n", .{tokens[i + 1].tag});
  i += 1;
  std.debug.assert(tokens[i].tag == .lparen);
  i += 1;
  var args = std.ArrayList(Arg).init(gpa.allocator());
  while (tokens[i - 1].tag != .rparen) {
    const arg = buildArg(source, tokens, i);
    try args.append(arg);
    i += 4;
  }
  std.debug.assert(tokens[i].tag == .arrow);
  const returnTok = tokens[i + 1];
  std.debug.assert(tokens[i + 1].tag == .identifier);
  return Func {
    .name = name,
    .args = args.items,
    .returnType = source[returnTok.loc.start..returnTok.loc.end]
  };
}

fn buildArg(source: [:0]u8, tokens: []parser.Token, start: u64) Arg {
  var i = start;
  const nameTok = tokens[i];
  std.debug.print("THE NAME TOK {s}", .{source[nameTok.loc.start..nameTok.loc.end]});
  std.debug.assert(nameTok.tag == .identifier);
  const name = source[nameTok.loc.start..nameTok.loc.end];
  std.debug.assert(tokens[i + 1].tag == .colon);
  i += 2;
  const kindTok = tokens[i];
  std.debug.print("THE KIND TOK {s}", .{source[kindTok.loc.start..kindTok.loc.end]});
  std.debug.assert(kindTok.tag == .identifier);
  const kind = source[kindTok.loc.start..kindTok.loc.end];

  return Arg {
    .name = name,
    .kind = kind
  };
}