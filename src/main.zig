const std = @import("std");
const ast = @import("ast.zig");
const token = @import("token.zig");
const parser = @import("parser.zig");
var gpa = std.heap.GeneralPurposeAllocator(.{}){};

pub fn main() !void {
  // var readbuf: [500]u8 = undefined;
  const flags = std.fs.File.OpenFlags { .mode = std.fs.File.OpenMode.read_write };
  const file = try std.fs.cwd().openFile("example.wit", flags);
  const readbuf = try file.reader().readAllAlloc(gpa.allocator(), std.math.maxInt(usize));
  const stat = try file.stat();
  std.debug.print("THE STAT {any}\n", .{stat});
  const source = try gpa.allocator().allocSentinel(u8, @intCast(usize, stat.size), 0);
  _ = try file.readAll(source);
  std.debug.print("THE SOURCE {s}\n", .{source});
  var tokenizer = parser.Tokenizer.init(source);
  var newTokens = std.ArrayList(parser.Token).init(gpa.allocator());
  const length = tokenizer.index;
  var cur: u32 = 0;
  while (cur < length) {
    const tok = try tokenizer.next();
    try newTokens.append(tok);
    cur += 1;
  }
  std.debug.print("THE NEW TOKENS {}\n", .{newTokens});
  const tokens  = try token.tokenize(readbuf);
  std.debug.print("OLD TOKENS {any}\n", .{tokens});
  
  const witAst = try ast.buildAst(tokens.items);
  const record = witAst.interfaces[0].defs[0];
  std.debug.print("THIS IS THE FIRST RECORD FIELD {s}\n", .{record.record.entries[0].field});
  std.debug.print("THIS IS THE FIRST RECORD VAL {s}\n", .{record.record.entries[0].value});
  std.debug.print("THIS IS THE SECOND RECORD FIELD {s}\n", .{record.record.entries[1].field});
  std.debug.print("THIS IS THE SECOND RECORD VAL {s}\n", .{record.record.entries[1].value});
  const func = witAst.interfaces[0].defs[1];
  std.debug.print("THE FUNC {s}", .{func.func.name});
}