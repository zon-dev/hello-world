# Zig Module for hello_world.

## Synopsis

```zig
const std = @import("std");
const hello = @import("hello_world");

test "Hello, World!" {
    try std.testing.expectEqualStrings("Hello, World!", hello.hello_world());
}

```

### Usage
Use `zig fetch` to add this library to build.zig.zon
```
$zig fetch --save https://github.com/zon-dev/hello-world/archive/refs/tags/0.0.1.tar.gz
```

And add this to you build.zig.zon
```
    // This is an example of how to add a dependency on another target.
    const hello_world = b.dependency("hello_world", .{
        .target = target,
        .optimize = optimize,
    });
    exe.root_module.addImport("hello_world", hello_world.module("hello_world"));
```

You can then import the library into your code and use it like below.
```
const std = @import("std");
const hello_world = @import("hello_world");

pub fn main() !void {
    std.debug.print("{?s}\n", .{hello_world.hello_world()});
}
```
