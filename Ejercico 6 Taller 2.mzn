include "globals.mzn";

int: N=3; % Tamaño del cuadrado mágico (debe ser impar)

array[1..N, 1..N] of var 1..(N*N): magic_square;

constraint all_different([magic_square[i, j] | i in 1..N, j in 1..N]);

constraint forall(i in 1..N) (
    sum(j in 1..N)(magic_square[i, j]) == N * (N^2 + 1) / 2
);
constraint forall(j in 1..N) (
    sum(i in 1..N)(magic_square[i, j]) == N * (N^2 + 1) / 2
);


constraint sum(i in 1..N)(magic_square[i, i]) == N * (N^2 + 1) / 2;
constraint sum(i in 1..N)(magic_square[i, N + 1 - i]) == N * (N^2 + 1) / 2;

solve satisfy;

output [
    "Cuadrado mágico de tamaño ", show(N), ":\n"
] ++ [ 
    show([magic_square[i, j] | j in 1..N]) ++ "\n" | i in 1..N 
];

