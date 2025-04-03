const std = @import("std");

fn printVerse(comptime message: []const u8, args: anytype) !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print(message ++ "\n", args);
}

fn printCouplet(comptime verses: [2][]const u8, args1: anytype, args2: anytype) !void {
    try printVerse(verses[0], args1);
    try printVerse(verses[1] ++ "\n", args2);
}

pub fn main() !void {
    var bottles: i32 = 99;
    while (bottles >= 0) {
        switch (bottles) {
            0 => {
                try printCouplet(.{
                    "No more bottles of beer on the wall, no more bottles of beer.",
                    "Go to the store and buy some more, 99 bottles of beer on the wall."
                    }, .{}, .{}
                );
            },
            1 => {
                try printCouplet(.{
                    "1 bottle of beer on the wall, 1 bottle of beer.",
                    "Take one down and pass it around, no more bottles of beer on the wall."
                    }, .{}, .{}
                );
            },
            else => {
                try printCouplet(.{
                    "{d} bottles of beer on the wall, {d} bottles of beer.",
                    "Take one down and pass it around, {d} {s} of beer on the wall."
                    },
                    .{bottles, bottles},
                    .{bottles - 1, if (bottles - 1 > 1) "bottles" else "bottle"}
                );
            },
        }
        std.time.sleep(1.5 * 1_000_000_000); // waiting a bit for fun
        bottles -= 1;
    }
}       
