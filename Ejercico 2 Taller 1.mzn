include "globals.mzn";  
var 1..5: a; %carlos
var 1..5: b; %maria
var 1..5: c; %juan
var 1..5: d; %Laura
var 1..5: e; %Pedro
int: tigre=1;
int: elefante=2;
int: leon=3;
int: cebra=4;
int: jirafa=5;

constraint all_different([a, b, c, d, e]);
constraint a!=tigre /\ a!=jirafa;
constraint b==3;
constraint c!=5;
constraint d==2;
constraint b!=tigre /\ e!=tigre;

solve satisfy;
output["Los animales Son: 1.tigre, 2.elefante 3.leon 4.cebra 5.jirafa ","\nCarlos: ",show(a),"\nMaria: ", show(b),"\nJuan: ", show(c),"\nLaura: ", show(d),"\nPedro: ", show(e)];