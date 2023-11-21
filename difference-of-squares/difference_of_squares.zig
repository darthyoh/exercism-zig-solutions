const std = @import("std");

pub fn squareOfSum(number: usize) usize {
    var sum: usize = 0;
    var i: usize = 0;
    while (i <= number) : (i += 1) {
        sum += i;
    }
    return std.math.pow(usize, sum, 2);
}

pub fn sumOfSquares(number: usize) usize {
    var sum: usize = 0;
    var i: usize = 0;
    while (i <= number) : (i += 1) {
        sum += std.math.pow(usize, i, 2);
    }
    return sum;
}

pub fn differenceOfSquares(number: usize) usize {
    return squareOfSum(number) - sumOfSquares(number);
}
