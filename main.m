[curves1, curves2] = curvesFactory();

[S1, S2] = coonsPatch(curves1, curves2, blendFactory());

hold on;
plot(S1(:, :, 1), S1(:, :, 2), 'black -');
plot(S2(:, :, 1), S2(:, :, 2), 'black -');