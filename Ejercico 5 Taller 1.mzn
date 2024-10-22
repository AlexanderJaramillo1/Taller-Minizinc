include "globals.mzn";  
var 1..5: a; %carlos
var 1..5: b; %maria
var 1..5: c; %juan
var 1..5: d; %Laura
var 1..5: e; %Pedro
int: rojo=1;
int: azul=2;
int: verde=3;
int: amarillo=4;
int: blanco=5;

constraint a!=c /\ a!=b;
constraint b=c;
constraint d!=c /\ d!=a;
constraint e!=d /\ e!=b;

solve satisfy;
output["Los colores Son: 1.rojo, 2.azul 3.verde 4.amarillo 5.blanco ","\na: ",show(a),"\nb: ", show(b),"\nc: ", show(c),"\nd: ", show(d),"\ne: ", show(e)];