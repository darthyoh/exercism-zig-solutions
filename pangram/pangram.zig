const std = @import("std");
const ascii = std.ascii;
const ArrayList = std.ArrayList;

pub fn isPangram(str: []const u8) bool {
    for ("abcdefghijklmnopqrstuvwxyz") |c| {
        var found = false;
        for (str) |c2| {
            if (ascii.isAlphabetic(c) and c == ascii.toLower(c2)) {
                found = true;
                break;
            }
        }
        if (!found) {
            return false;
        }
    }
    return true;
}
