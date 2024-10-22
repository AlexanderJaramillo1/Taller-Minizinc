include "globals.mzn";  
var 1..3: a; %alejandro
var 1..3: b; %benito
var 1..3: c; %andres
var 1..3: d; %carlos
var 1..3: e; %dario
var 1..3: f; %Tomas

int: carro  =1;
int: avion  =2;
int: tren   =3;

constraint a!=carro /\ b!=avion /\ a=b;
constraint c=avion;
constraint d!=e /\ d!=avion;

solve satisfy;
output [
    "1.Carro  2.Avion   3.Tren   \n",
    "Alejandro viaja en ", show(a), "\n",
    "Benito viaja en ", show(b), "\n",
    "Andrés viaja en ", show(c), "\n",
    "Carlos viaja en ", show(d), "\n",
    "Darío viaja en ", show(e), "\n",
    "Tomás viaja en ", show(f), "\n"
];