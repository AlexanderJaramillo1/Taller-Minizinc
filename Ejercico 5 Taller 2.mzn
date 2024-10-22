include "globals.mzn";

int: num_clases=7;
int: num_espacios=4;
set of int: clases=1..num_clases;
set of int: espacios=1..num_espacios;

array[clases] of var espacios: horario;

constraint horario[4]<horario[6];
constraint horario[5]<horario[7];
constraint horario[6]<horario[2];

constraint forall(c in clases)(
    (horario[1] == horario[c] -> c != 2 /\ c != 3 /\ c != 4 /\ c != 7) /\
    (horario[2] == horario[c] -> c != 3 /\ c != 6) /\
    (horario[3] == horario[c] -> c != 4 /\ c != 5 /\ c != 6) /\
    (horario[4] == horario[c] -> c != 5 /\ c != 6) /\
    (horario[5] == horario[c] -> c != 7)
);
constraint forall(s in espacios) (
    sum(c in clases)(if horario[c] == s then 1 else 0 endif) <= 2
);
solve satisfy;


output [
    "Asignaciones de clases a espacios:\n"
] ++ [ 
    "Clase " ++ show(c) ++ " -> Espacio " ++ show(horario[c]) ++ "\n" | c in clases 
];