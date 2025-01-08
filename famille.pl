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

