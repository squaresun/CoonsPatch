function [curves] = blendFactory()

curves = {};

p = [0 1; 0.2 -0.6; 1 0];
curves{1} = p;
p = [0 1; 0.8 0.7; 1 0];
curves{2} = p;

curves = createBeziers(curves);