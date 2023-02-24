const std = @import("std");
const AST = @import("ast.zig");
var gpa = std.heap.GeneralPurposeAllocator(.{}){};

pub fn genCompWasm(ast: AST.AST) !void {
  std.debug.print("THE AST {}", .{ast});
  var compWasm = std.ArrayList(u8).init(gpa.allocator());
  // ITS A COMPONENT
  try compWasm.append(0x00);
  try compWasm.append(0x61);
  try compWasm.append(0x73);
  try compWasm.append(0x6d);
  try compWasm.append(0x0c);
  try compWasm.append(0x00);
  try compWasm.append(0x01);
  try compWasm.append(0x00);
  // TYPE SECTION
  try compWasm.append(0x07);
  // SIZE?
  try compWasm.append(0x44);
  // ONE COUNT
  try compWasm.append(0x01);
  // 0xb | 41 02 01 42 | [type 0] Component([Type(Instance([Type(Defined(Record([("x", Primitive(U32)), ("y", Primitive(U32))]))), Export { name: "coord", url: "", ty: Type(Eq, 0) }, Type(Func(ComponentFuncType { params: [("foo", Primitive(String)), ("bar", Primitive(U8))], results: Unnamed(Type(0)) })), Export { name: "get-position", url: "", ty: Func(2) }])), Export { name: "hello", url: "", ty: Instance(0) }])
  // COMPONENT TYPE Component()
  try compWasm.append(0x41);
  // UNSURE MAYEB ALIAS? ?[Type]
  try compWasm.append(0x02);
  // UNSURE MAYBE instance decl type ?Instance()
  try compWasm.append(0x01);
  // INSTANCE TYPE
  try compWasm.append(0x42);
  // EXPORT DECL
  try compWasm.append(0x04);
  // UNSURE MAYBE instance decl type
  try compWasm.append(0x01);
  // RECORD DEF VAL TYPE
  try compWasm.append(0x72);
  try compWasm.append(0x02);
  try compWasm.append(0x01);
  try compWasm.append(0x78);
  // U32
  try compWasm.append(0x79);
  try compWasm.append(0x01);
  // U32
  try compWasm.append(0x79);
  // U32
  try compWasm.append(0x79);
  try compWasm.append(0x04);
  // EXTERN DESC?
  try compWasm.append(0x05);
  // THE DATA: coord
  try compWasm.append(0x63);
  try compWasm.append(0x6f);
  try compWasm.append(0x6f);
  try compWasm.append(0x72);
  try compWasm.append(0x64);

  try compWasm.append(0x00);
  try compWasm.append(0x03);
  try compWasm.append(0x00);
  try compWasm.append(0x00);
  try compWasm.append(0x01);
  // FUNC TYPE
  try compWasm.append(0x40);
  try compWasm.append(0x02);
  try compWasm.append(0x03);
  // THE DATA: foo
  try compWasm.append(0x66);
  try compWasm.append(0x6f);
  try compWasm.append(0x6f);
  // string
  try compWasm.append(0x73);
  // THE DATA: bar
  try compWasm.append(0x62);
  try compWasm.append(0x61);
  try compWasm.append(0x72);
  // u8
  try compWasm.append(0x7d);
  try compWasm.append(0x00);
  try compWasm.append(0x00);
  try compWasm.append(0x04);
  try compWasm.append(0x0c);
  // THE DATA: get-position
  try compWasm.append(0x67);
  try compWasm.append(0x65);
  try compWasm.append(0x74);
  try compWasm.append(0x2d);
  try compWasm.append(0x70);
  try compWasm.append(0x6f);
  try compWasm.append(0x73);
  try compWasm.append(0x69);
  try compWasm.append(0x74);
  try compWasm.append(0x69);
  try compWasm.append(0x6f);
  try compWasm.append(0x6e);

  try compWasm.append(0x00);
  try compWasm.append(0x01);
  try compWasm.append(0x02);
  try compWasm.append(0x04);
  try compWasm.append(0x05);
  // THE DATA: hello
  try compWasm.append(0x68);
  try compWasm.append(0x65);
  try compWasm.append(0x6c);
  try compWasm.append(0x6c);
  try compWasm.append(0x6f);

  try compWasm.append(0x00);
  try compWasm.append(0x05);
  try compWasm.append(0x00);

  std.debug.print("THE WASM {x}", .{std.fmt.fmtSliceHexLower(compWasm.items)});
}