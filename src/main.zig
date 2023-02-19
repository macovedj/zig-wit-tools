const std = @import("std");
const ast = @import("ast.zig");
const token = @import("token.zig");
const parser = @import("parser.zig");
var gpa = std.heap.GeneralPurposeAllocator(.{}){};

pub fn main() !void {
  // var readbuf: [500]u8 = undefined;
  const flags = std.fs.File.OpenFlags { .mode = std.fs.File.OpenMode.read_write };
  const file = try std.fs.cwd().openFile("example.wit", flags);
  const stat = try file.stat();
  const source = try gpa.allocator().allocSentinel(u8, @intCast(usize, stat.size), 0);
  _ = try file.readAll(source);
  // std.debug.print("THE SOURCE {s}\n", .{source});
  var tokenizer = parser.Tokenizer.init(source);
  var newTokens = std.ArrayList(parser.Token).init(gpa.allocator());
  while (true) {
    const tok = try tokenizer.next();
    // std.debug.print("THE TOKEN: {}", .{tok});
    try newTokens.append(tok);
    if (tok.tag == parser.Token.Tag.eof) {
      break;
    }
  }
  
  const witAst = try ast.buildAst(source, newTokens.items);
  std.debug.print("THE AST {any}", .{witAst});
  const interface = witAst.interfaces[0];
  std.debug.print("THE INTERFACE {s}", .{interface.name});
  const def = interface.defs[0];
  std.debug.print("THE DEF {s}", .{def.record.name});
  std.debug.print("THIS IS THE FIRST RECORD FIELD {s}\n", .{def.record.entries[0].field});
  std.debug.print("THIS IS THE FIRST RECORD VAL {s}\n", .{def.record.entries[0].value});
  // std.debug.print("THIS IS THE SECOND RECORD FIELD {s}\n", .{record.record.entries[1].field});
  // std.debug.print("THIS IS THE SECOND RECORD VAL {s}\n", .{record.record.entries[1].value});
  // const func = witAst.interfaces[0].defs[1];
  // std.debug.print("THE FUNC {s}", .{func.func.name});
}