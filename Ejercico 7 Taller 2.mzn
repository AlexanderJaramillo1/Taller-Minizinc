include "globals.mzn";

int: M;
array[1..M, 1..M] of var 1..M: matrix;

constraint forall(i in 2..M, j in 1..M) (
    (matrix[i, j] == M) -> (matrix[i - 1, j] == 1)
);

constraint forall(i in 1..M, j in 2..(M-1)) (
    (matrix[i, j] mod 2 == 0) -> (matrix[i, j - 1] == matrix[i, j] - 1 /\ matrix[i, j + 1] == matrix[i, j] + 1)
);

constraint forall(n in 1..M) (
    sum(i in 1..M, j in 1..M)(if matrix[i, j] == n then 1 else 0 endif) >= 2
);

solve satisfy;
  
output [
    "Matrix de tamaño ", show(M), ":\n"
] ++ [ 
    show([matrix[i, j] | j in 1..M]) ++ "\n" | i in 1..M 
];