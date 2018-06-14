function [curves1, curves2] = curvesFactory()

curves = cell(2);

% Top and bottom
p = [0 5; 2 4; 5 5];
curves{1} = p;
p = [0 0; 1.5 -1; 4 -2;6 0];
curves{2} = p;

curves1 = createBeziers(curves);

% Left and right
p = [0 5; -1 1.5; 0 0];
curves{1} = p;
p = [5 5; 7 3.5; 4 2.5; 6 0];
curves{2} = p;

curves2 = createBeziers(curves);