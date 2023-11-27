const toUpper = @import("std").ascii.toUpper;

pub fn score(s: []const u8) u32 {
    var sum: u32 = 0;

    for (s) |c| {
        sum += switch (toUpper(c)) {
            'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T' => 1,
            'D', 'G' => 2,
            'B', 'C', 'M', 'P' => 3,
            'F', 'H', 'V', 'W', 'Y' => 4,
            'K' => 5,
            'J', 'X' => 8,
            else => 10,
        };
    }
    return sum;
}
