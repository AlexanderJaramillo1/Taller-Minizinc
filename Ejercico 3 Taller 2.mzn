var 0..30: x;
var 0..30: y;
var int: x1=1*x;
var int: x2=5*x;
var int: y1=1*y;
var int: y2=5*y;
constraint x1+x2 >=15;
constraint y1+y2 >=15;

solve minimize 10*x + 25*y;

output [
    "Cantidad de compuesto X: ", show(x), "\n",
    "Cantidad de compuesto Y: ", show(y), "\n",
    "Costo total: ", show(10*x + 25*y), "\n"
];