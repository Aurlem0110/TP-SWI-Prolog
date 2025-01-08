homme(pierre).
homme(marc).
homme(paul).
homme(jean).
homme(jacques).

femme(marie).
femme(sophie).

frere(marc, pierre).
frere(marc, jean).

parent(jacques, marc).
parent(jacques, pierre).
parent(jacques, jean).

parent(pierre, paul).
parent(marie, paul).
parent(marc, sophie).

pere(X, Y) :- homme(X), parent(X, Y).
mere(X, Y) :- femme(X), parent(X, Y).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

frere(X, Y) :- homme(X), parent(Z, X), parent(Z, Y).
soeur(X, Y) :- femme(X), parent(Z, X), parent(Z, Y).

oncle(X, Y) :- frere(X, Z), parent(Z, Y).
tante(X, Y) :- soeur(X, Z), parent(Z, Y).

longueur([], 0).
longueur([_ | Queue], N) :- longueur(Queue, M), N is M + 1.

recherche([X|_], X).
recherche([_ | Queue], N) :- recherche(Queue, N).