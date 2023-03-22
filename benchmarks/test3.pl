g(X) :- X #> 2.
h(X, Y) :- X + Y #= 3.
i(V) :- V =\= hi.
f(X, Y, Z) :- g(Y), i(X), h(2,Y), Z * 2 #= 20.
