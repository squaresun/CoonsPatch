blends = blendFactory();

P = {};
P{1} = @(t) upperArc(t);
P{2} = @(t) lowerArc(t);

Q = {};
Q{1} = @(t) lineSegment(t);
Q{2} = @(t) rightArc(t);

[S1, S2] = coonsPatch(P, Q, blends);
hold on;

plot(S1(:, :, 1), S1(:, :, 2), 'black -');
plot(S2(:, :, 1), S2(:, :, 2), 'black -');

function [p] = lineSegment(t)

P0 = [-3.5, 12.75^0.5];
P1 = [-3.5, -(12.75)^0.5];

p = [];

p(:, 1) = (1-t)*P0(1) + t*P1(1);
p(:, 2) = (1-t)*P0(2) + t*P1(2);

end

function [p] = upperArc(t)

%%%%%%%%%%% theta of the upper arc from theta 1 to theta 2 %%%%%%%%%%%
th1 = atan(3/4);
th2 = atan(3.5/(12.75)^0.5) + 0.5*pi;

upperth = (1-t)*th1 + t*th2;
p = [];
% Plot of upper arc
p(:, 1) = 5*cos(upperth);
p(:, 2) = 5*sin(upperth);

end

function [p] = lowerArc(t)

%%%%%%%%%%% theta of the upper arc from theta 1 to theta 2 %%%%%%%%%%%
th1 = atan(3/4);
th2 = atan(3.5/(12.75)^0.5) + 0.5*pi;

upperth = (1-t)*th1 + t*th2;
p = [];
% Plot of upper arc
p(:, 1) = 5*cos(upperth);
p(:, 2) = -5*sin(upperth);

end

function [p] = rightArc(t)

% Plot of overlapped arc
T0 = [4, -3];
T1 = [4, 3];
th3 = atan(3/4);
th3 = th3 + 2*(0.5*pi - th3);
th4 = atan(3/4) + pi;

olapth = (1-t)*th3 + t*th4;

p = [];
p(:, 1) = 5*cos(olapth) + 8;
p(:, 2) = 5*sin(olapth);

end