recArea(Width,Length,Area):- Area is Width * Length.
diskArea(Radius,Area):- Area is pi*Radius*Radius.
degrees(AngleR,AngleD):- AngleD is AngleR*(180/pi).
degreesToFahrenheit(AngleR,AngleD):- AngleD is (AngleR*(9/5))+32.
father(john,paul).
father(jim,andrew).
father(john,bill).

father(albert, bob).
father(albert, betsy).
father(albert, bill).

father(john , paul).
father(jim , andrew).
father(john, bill).

father(sara , sada).
father(molidou , ouleye).
father(samba , sara).
father(samba , molidou).



father(alice, bob).
father(alice, betsy).
father(alice, sada).

father(bob, carl).
father(bob, charlie).
%brother(X,Y):-  father(john,Y),brother(X,Y).
brother(paul,bill).
brother(bob, sada).

cousin(sada , ouleye).
%qui est le fils de samba et est ce que le fils de samba � un fils
%parent(samba , X) , parent(X , Y).

get_grandparent :- father(samba, Y),
                father(X, Y),
                format('~w ~s grandfather~n', [X, "is the"]).

get_descendent :- father(samba, X), father(X, Y),write(Y),
              write(' est le descendant de '),
              write(samba), nl.

get_cousin :- father(samba, X), father(X, Y) ,father(samba, V), father(V, W),cousin(Y,W),write(Y),write('est le cousin de') ,write(W).


%qui sont les parents de bob
%parent(X, bob).
%qui sont les parents de bob
% parent(Y, carl), parent(X, Y).
grandson(X,Y):-father(Y,Z),father(Z,X).

%f(X,Y):- Y is 1if X=0 else Y is 5.
sum(X,Y,R):-R is (X+Y).

f(X,1,R):- R is X.
f(X,5,R):- if( X>1):R is 5.
sumN(N,R) :- R is N * ((N+1) / 2) .
sum(0,0).
sum(N,R) :-
 N > 0 ,
 N1 is N-1 ,
 sum(N1,R1) ,
 R is R1+N .
member(X,[X|_]).
member(X,[_|T]):- member(X,T),!.

%member(Y,[X|L]) :- X \== Y, member(Y,L).
doubleall([],[]).
doubleall([H|T],[H2|T2]):- H2 is 2*H, doubleall(T,T2).















