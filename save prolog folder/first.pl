valuable(gold).
female(jane).
owns(jane,gold).
father(john,mary).
gives(john,book,mary).
[aime].
p(edward7, george5).
p(victoria, edward7).
p(alexandra, george5).
p(george6, elizabeth2).
p(george5, george6).
speaks(allen,russian).
speaks(bob,english).
speaks(mary,russian).
speaks(mary,wnglish).
talkswith(Person1,Person2):-speaks(Person1,L),
speaks(Person2,L), Person1 \= Person2.
factorial(0,1).
factorial(N,Result) :- N>0, M is N-1,
factorial(M,SubResult), Result is N*SubResult.
fib(0,1). fib(1,1).
fib(N,R) :- N>1, N1 is N-1, N2 is N-2,
fib(N1,R1), fib(N2,R2), R is R1+R2.
likes(john,mary).
likes(mary,sue).
member(X,[_,T]):- member(X,T).






[X,Y,Z] = [2*X,2*Y,2*Z].


