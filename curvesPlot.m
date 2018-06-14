%% Plotting curves before coons patch

[curves1, curves2] = curvesFactory();

hold on;
p = zeros([101 2]);
i = 1;
for t = 0:0.01:1
    p(i, :) = curves1{1}(t);
    i = i + 1;
end
plot(p(:, 1), p(:, 2), 'green -');
i = 1;
for t = 0:0.01:1
    p(i, :) = curves1{2}(t);
    i = i + 1;
end
plot(p(:, 1), p(:, 2), 'red -');
i = 1;
for t = 0:0.01:1
    p(i, :) = curves2{1}(t);
    i = i + 1;
end
plot(p(:, 1), p(:, 2), 'blue -');
i = 1;
for t = 0:0.01:1
    p(i, :) = curves2{2}(t);
    i = i + 1;
end
plot(p(:, 1), p(:, 2), 'black -');