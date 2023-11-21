const std = @import("std");

pub fn squareOfSum(number: usize) usize {
    var sum: usize = 0;

    for (0..number + 1) |i| {
        sum += i;
    }
    return std.math.pow(usize, sum, 2);
}

pub fn sumOfSquares(number: usize) usize {
    var sum: usize = 0;
    for (0..number + 1) |i| {
        sum += std.math.pow(usize, i, 2);
    }
    return sum;
}

pub fn differenceOfSquares(number: usize) usize {
    return squareOfSum(number) - sumOfSquares(number);
}
