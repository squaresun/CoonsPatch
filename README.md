# Coons Patch

Implementation of coons patch, with provided 2D curves.

![](https://github.com/squaresun/CoonsPatch/wiki/Patched.png)

## Implementation

For coons patch, used the equation below:

\begin{gather}
    S(u,v)=
    \begin{bmatrix}
        \alpha(u) & 1 - \alpha(u)
    \end{bmatrix}
    \begin{bmatrix}
        Q_{1}(v) \\
        Q_{2}(v)
    \end{bmatrix}+
    \begin{bmatrix}
        \beta(v) & 1 - \beta(v)
    \end{bmatrix}
    \begin{bmatrix}
        P_{1}(u) \\
        P_{2}(u)
    \end{bmatrix}-
    \begin{bmatrix}
        \alpha(u) & 1 - \alpha(u)
    \end{bmatrix}
    \begin{bmatrix}
        P_{1}(0) & P_{2}(0) \\
        P_{1}(1) & P_{2}(1)
    \end{bmatrix}
    \begin{bmatrix}
        \beta(v) \\
        1 - \beta(u)
    \end{bmatrix}
\end{gather}

> $\alpha(u)$ and $\beta(v)$ are called blending functions, they satisfy:
> $\alpha(0) = \beta(0) = 1$ and $\alpha(1) = \beta(1) = 0$

## Blending functions

Use bezier curves with `n` control points, in order `n - 1`.

See [blendFactory.m]()

## Curves

Used bezier curves.

![](https://github.com/squaresun/CoonsPatch/wiki/Curves.png)

See [curvesPlot.m]()