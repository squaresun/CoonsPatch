function [p] = inverseLinear(t)

p = [];

p(:, 1) = 0 * (1 - t) + t * 1;
p(:, 2) = 1 * (1 - t) + t * 0;