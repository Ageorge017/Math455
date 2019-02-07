# script for problem 10c
x = 3;
delta = 1.e-11;

g1 =(cos(x+delta)-cos(x))/delta;
g2 = [-2 * sin(((2*x)+delta)/2)*sin(delta/2)]/delta;

g1 + sin(x)
g2 + sin(x)