int: farmacoTotal= 600;
int: Pgrande=40;
int: Ppequena= 30;
var 1..30: x;
var 1..30: y;
constraint Pgrande*x+Ppequena*y <= farmacoTotal;
constraint x>=3 /\ y>=2*x;

solve maximize 2*x+y;

output [
    "Número de pastillas grandes: ", show(x), "\n",
    "Número de pastillas pequeñas: ", show(y), "\n",
    "Beneficio total: $", show(2 * x + 1 * y), "\n"
];