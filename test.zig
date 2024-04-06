const std = @import("std");
const hello = @import("hello_world");

test "Hello, World!" {
    try std.testing.expectEqualStrings("Hello, World!", hello.hello_world());
}
