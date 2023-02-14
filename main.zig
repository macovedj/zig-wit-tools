const std = @import("std");


// fn tokenize() {

// }

pub fn main() !void {
  var readbuf: [500]u8 = undefined;
  const flags = std.fs.File.OpenFlags { .mode = std.fs.File.OpenMode.read_write };
  const file = try std.fs.cwd().openFile("example.wit", flags);
  _ = file.read(&readbuf) catch |err| {
    std.debug.print("TEH READ ERROR: {}", .{err});
    return;
  };
  std.debug.print("THE FILE {s}", .{readbuf});
}