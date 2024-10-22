include "globals.mzn";

var 1..7: hoy;
var 1..7: ayer;
var 1..7: manana;
var 1..7:Ps_manana;
int: Lunes=1;
int: Martes=2;
int: Miercoles=3;
int: Jueves=4;
int: Viernes=5;
int: Sabado=6;
int: Domingo=7;
constraint all_different([hoy, ayer, manana, Ps_manana]);
constraint hoy!=Lunes /\ hoy!=Martes;
constraint ayer=Domingo;
constraint manana=Jueves;
constraint Ps_manana=Sabado;
constraint manana<Ps_manana;

solve satisfy;
output[
"Lunes=1 Martes=2 Miercoles=3 Jueves=4 Viernes=5 Sabado=6 Domingo=7\n", "hoy es ",show(hoy)];