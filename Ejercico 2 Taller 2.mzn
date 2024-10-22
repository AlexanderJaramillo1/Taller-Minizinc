include "globals.mzn";
int:n=6;
int: mochila = 15;
array [1..6] of int: pesos = [3, 5, 1, 4, 2, 1];
array[1..6] of int: valores = [15, 20, 5, 10, 2, 8];

array[1..6] of var 0..1: x;

constraint sum(i in 1..6)(pesos[i] * x[i]) <= mochila;
solve maximize sum(i in 1..6)(valores[i] * x[i]);

array[1..6] of string: nombre = ["Saco de dormir", "Tienda de campaña", "Cantimplora", "Comida", "Ropa", "Botiquín"];
output["1. entra 0.No entra \n",show(nombre),"\n",show(x[1]),"\t",show(x[2]),"\t",show(x[3]),"\t",show(x[4]),"\t",show(x[5]),"\t",show(x[6]),"\t"];