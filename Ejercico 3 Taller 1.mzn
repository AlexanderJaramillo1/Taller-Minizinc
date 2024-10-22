int: max8L= 8;
int: max5L= 5;
int: max3L= 3;

var 1..8: vaso8L;
var 1..8: vaso5L;
var 1..8: vaso3L;

predicate lleno8L()= vaso8L==max8L;
predicate lleno5L()= vaso5L==max5L;
predicate lleno3L()= vaso3L==max3L;

predicate vacio8L()= vaso8L==0;
predicate vacio5L()= vaso5L==0;
predicate vacio3L()= vaso3L==0;

predicate verter8L_5L()= vaso8L>0 /\ vaso5L<max5L;
predicate verter5L_8L()= vaso5L>0 /\ vaso8L<max8L;
predicate verter8L_3L()= vaso8L>0 /\ vaso3L<max3L;
predicate verter3L_8L()= vaso3L>0 /\ vaso8L<max8L;
predicate verter5L_3L()= vaso5L>0 /\ vaso3L<max3L;
predicate verter3L_5L()= vaso3L>0 /\ vaso5L<max5L;

constraint vaso8L==4;

solve satisfy;