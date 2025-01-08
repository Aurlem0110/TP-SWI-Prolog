homme(pierre).
homme(marc).
homme(paul).
femme(marie).
femme(sophie).

homme(jacques).
parent(jacques, marc).

parent(pierre, paul).
parent(marie, paul).
parent(marc, sophie).


pere(X, Y) :- homme(X), parent(X, Y).
mere(X, Y) :- femme(X), parent(X, Y).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

frere(X, Y) :- homme(X), parent(Z, X), parent(Z, Y).
soeur(X, Y) :- femme(X), parent(Z, X), parent(Z, Y).