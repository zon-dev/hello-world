const std = @import("std");
const hello_world = @import("hello_world");

pub fn main() !void {
    std.debug.print("{?s}\n", .{hello_world.hello_world()});
}
