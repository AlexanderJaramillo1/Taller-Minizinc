var int: a;
var int: b;
var int: c;
int: joven=1;
int: medio=2;
int: viejo=3;

constraint a != b /\ b!=c /\ a!=c;
constraint c<b;
constraint a>c;
constraint c<a /\c<b;
constraint b>c;

constraint a >= joven /\ a <= viejo;
constraint b >= joven /\ b <= viejo;
constraint c >= joven /\ c <= viejo;

solve satisfy;

output ["Ana: ", show(a), "\nBenito: ", show(b), "\nCarla: ", show(c)];