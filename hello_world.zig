const std = @import("std");
const print = std.debug.print;
const mem = std.mem;

pub fn hello_world() []const u8 {
    return "Hello, World!";
}
