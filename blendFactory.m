%% Creates the blending functions used in coons patch
function [curves] = blendFactory()

curves = {};

p = [0 1; 0.8 0.4; 1 0];
curves{1} = p;
p = [0 1; 0.2 0.2; 1 0];
curves{2} = p;

curves = createBeziers(curves);
