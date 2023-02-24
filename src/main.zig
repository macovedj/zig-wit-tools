const std = @import("std");
const ast = @import("ast.zig");
const parser = @import("parser.zig");
const wat = @import("wat.zig");
const compwasm = @import("compwasm.zig");
var gpa = std.heap.GeneralPurposeAllocator(.{}){};

pub fn main() !void {
  const flags = std.fs.File.OpenFlags { .mode = std.fs.File.OpenMode.read_write };
  const file = try std.fs.cwd().openFile("wit/example.wit", flags);
  const stat = try file.stat();
  const source = try gpa.allocator().allocSentinel(u8, @intCast(usize, stat.size), 0);
  _ = try file.readAll(source);
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
  try wat.genWat(witAst);
  try compwasm.genCompWasm(witAst);
}