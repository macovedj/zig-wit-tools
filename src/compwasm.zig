const std = @import("std");
const AST = @import("ast.zig");
var gpa = std.heap.GeneralPurposeAllocator(.{}){};

pub fn genCompWasm(ast: AST.AST) !void {
  std.debug.print("THE AST {}", .{ast});
  var compWasm = std.ArrayList(u8).init(gpa.allocator());
  try compWasm.append(0x00);
  try compWasm.append(0x61);
  try compWasm.append(0x73);
  try compWasm.append(0x6d);
  try compWasm.append(0x0c);
  try compWasm.append(0x00);
  try compWasm.append(0x01);
  try compWasm.append(0x00);
  std.debug.print("THE WASM {x}", .{std.fmt.fmtSliceHexLower(compWasm.items)});
}