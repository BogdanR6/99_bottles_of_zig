const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    var bottles: i32 = 99;
    while (bottles >= 0) {
        switch (bottles) {
            0 => {
                try stdout.print("No more bottles of beer on the wall, no more bottles of beer.\n", .{});
                try stdout.print("Go to the store and buy some more, 99 bottles of beer on the wall.\n", .{});
            },
            1 => {
                try stdout.print("1 bottle of beer on the wall, 1 bottle of beer.\n", .{});
                try stdout.print("Take one down and pass it around, no more bottles of beer on the wall.\n", .{});
                try stdout.print("\n", .{});
            },
            else => {
                try stdout.print("{d} bottles of beer on the wall, {d} bottles of beer.\n", .{bottles, bottles});      
                try stdout.print("Take one down and pass it around, {d} {s} of beer on the wall.\n", 
                        .{bottles - 1, if (bottles - 1 > 1) "bottles" else "bottle"});
                try stdout.print("\n", .{});
            },
        }
        std.time.sleep(1.5 * 1_000_000_000); // waiting a bit for fun
        bottles -= 1;
    }
}
