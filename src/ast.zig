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
  // entries: []RecordEntry
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

pub fn buildAst(source: [:0]u8, tokens: []parser.Token) !AST {
  std.debug.print("THE SOURCE: {s}", .{source});
  var interfaces = std.ArrayList(Interface).init(gpa.allocator());
  for (tokens) |tok, i| {
    std.debug.print("THE TOKEN {s}\n", .{source[tok.loc.start..tok.loc.end]});
    // std.debug.print("THE TOKEN KIND {any}\n", .{tok.kind});
    // std.debug.print("THE TOKEN VAL {s}\n", .{tok.val});
    switch(tok.tag) {
      .eof => {},
      .identifier => {},
      .invalid => {},
      .lcurl => {},
      .rcurl => {},
      .keyword_interface => {
        const interface = try buildInterface(source, tokens, i);
        // // buildInterface(tokens, i);
        // std.debug.print("ADDING AN INTERFACE TO THE AST {any}\n", .{interface});
        try interfaces.append(interface);
      },
      .keyword_record => {},
    }
    // switch(tok) {
    //   .colon => {},
    //   .comma => {},
    //   .func => {},
    //   .interface => {
    //     const interface = try buildInterface(tokens, i);
    //     // buildInterface(tokens, i);
    //     std.debug.print("ADDING AN INTERFACE TO THE AST {any}\n", .{interface});
    //     try interfaces.append(interface);
    //   },
    //   .lcurl => {},
    //   .lparen => {},
    //   .literal => {},
    //   .rcurl => {},
    //   .rparen => {},
    //   .record => {},
    //   .unsigned32 => {},
    //   // .colon => {},
    //   // .colon => {},
    //   // .colon => {},
    //   // .colon => {},
    // }
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
    // const tok = std.meta.stringToEnum(parser.Token.Tag, cur.tag) orelse parser.Token.Tag.identifier;
    switch (tok.tag) {
      .eof => {},
      .invalid => {},
      .identifier => {},
      .lcurl => {
        std.debug.print("THE L CURL", .{});
        buildingInterface = false;
      },
      .rcurl => {},
      .keyword_interface => {
        std.debug.print("IN INTERFACE BLOCK\n{}\n", .{tok});
        std.debug.assert(tokens[i + 1].tag == .identifier);
        std.debug.assert(tokens[i + 2].tag == .lcurl);
        name = source[tok.loc.start..tok.loc.end];
        i += 3;
        std.debug.print("NEXT TOKEN {any}", .{tokens[i]});
        std.debug.print("NEXT TOKEN {s}", .{source[tokens[i].loc.start..tokens[i].loc.end]});
        switch(tokens[i].tag) {
          .eof => {},
          .identifier => {},
          .invalid => {},
          .lcurl => {},
          .rcurl => {},
          .keyword_interface => {},
          .keyword_record => {
            std.debug.print("GONNA BUILD A RECORD", .{});
            const record = try buildRecord(source, tokens, i);
            try defs.append(WitDef { .record = record });
            buildingInterface = false;
          },
        }
      },
      .keyword_record => {
        std.debug.print("INSIDE KEYWORD RECORD", .{});
      },
      // .colon => {},
      // .comma => {},
      // .func => {},
      // .interface => {},
      // .lcurl => {},
      // .lparen => {},
      // .literal => {
      //   std.debug.print("ENCOUTNERED LITERAL IN INTERFACE CONSTRUCTION {s} \n", .{tokens[i].val});
      //   const func = WitDef { .func = buildFunc(tokens, i) };
      //   try defs.append(func);
      //   buildingInterface = false;
      // },
      // .rcurl => {},
      // .rparen => {},
      // .record => {
      //   std.debug.print("BUILD A RECORD HERE \n", .{});
      //   const rec = try buildRecord(tokens, i);
      //   const record = WitDef { .record = rec };
      //   try defs.append(record);
      //   std.debug.print("THE RECORD {any}\n", .{record});
      //   const size = rec.entries.len;
      //   std.debug.print("SIZE OF THE RECORD {}\n", .{size});
      //   i += 4 * (size + 1);
      //   std.debug.print("THE NEXT TOKEN {}\n", .{tokens[i].kind});
      // },
      // .unsigned32 => {},
    }
    // std.debug.print("NEXT TOK {any}\n", .{tokens[i]});
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
  // var buildingRecord = true;
  // const name = tokens[i].val;
  i += 2;
  // std.debug.print("NEXT TOK IN RECORD BUILDING {s}\n", .{tokens[i].val});
  // var entries = std.ArrayList(RecordEntry).init(gpa.allocator());
  // while (buildingRecord) {
    // const entry = buildRecordEntry(tokens, i);
    // i += 2;
    // try entries.append(entry);
    // if (tokens[i + 2].kind != token.TokenType.literal) {
    //   buildingRecord = false;
    // }
    // i += 2;
  // }
  return Record {
    .name = name,
  //   .entries = entries.items
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