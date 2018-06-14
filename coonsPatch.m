%% Interpolates inside 4 curves
function [S1, S2] = coonsPatch(P, Q, blend)

S1 = zeros([101 101 2]);
S2 = zeros([101 101 2]);

% I didn't use i1 = (u * 100) + 1 , to avoid Matlab's number truncation problem
i1 = 1;
for u = 0:0.01:1
    i2 = 1;
    for v = 0:0.01:1
        S1(i1, i2, :) = coons(P, Q, blend, u, v);
        S2(i1, i2, :) = coons(P, Q, blend, v, u);
        i2 = i2 + 1;
    end
    i1 = i1 + 1;
end

function [S] = coons(P, Q, blend, u, v)

S = [];
blend1u = blend{1}(u);
blend2u = blend{2}(u);
blend2v = blend{2}(v);
Q1v = Q{1}(v);
P1u = P{1}(u);
Q2v = Q{2}(v);
P2u = P{2}(u);
P10 = P{1}(0);
P11 = P{1}(1);
P20 = P{2}(0);
P21 = P{2}(1);

S(1) = [blend1u(1) (1 - blend1u(1))] * [Q1v(1); Q2v(1)] + [blend2v(1) (1 - blend2v(1))] * [P1u(1); P2u(1)] - [blend1u(1) (1 - blend1u(1))] * [P10(1) P20(1); P11(1) P21(1)] * [blend2v(1); (1 - blend2u(1))];
S(2) = [blend1u(2) (1 - blend1u(2))] * [Q1v(2); Q2v(2)] + [blend2v(2) (1 - blend2v(2))] * [P1u(2); P2u(2)] - [blend1u(2) (1 - blend1u(2))] * [P10(2) P20(2); P11(2) P21(2)] * [blend2v(2); (1 - blend2u(2))];
