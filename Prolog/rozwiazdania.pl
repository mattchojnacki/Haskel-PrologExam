%Zad1

miasto(huge, 4, 6, 4, 5).
miasto(small, -3, -4, 1, 2).
miasto(green, 10, 10, 4, 3).
miasto(border, -5, 10, 4, 1).
miasto(center, 2, 1, 4, 3).
miasto(other, -7, 7, 5, 5).
miasto(windy, -10, -8, 4, 5).
miasto(sunny, 3, 5, 2, 1).
miasto(good, 0, 1, 4, 2).
miasto(bad, 0, 0, 2, 0 ).

gestoscZaludnienia(N,R) :- 
	miasto(N,_,_,A,P), R is P/A.
	
odlegloscMiasto(N1,N2,R) :-
	miasto(N1,X1,Y1,_,_),
	miasto(N2,X2,Y2,_,_),
	R is abs(X1-X2)+abs(Y1-Y2).
	
miastoGraniczne(N,P) :- miasto(N,X,Y,_,_),
					  X1 is abs(X),
					  Y1 is abs(Y),
					  (X1 =:= P ; Y1 =:= P).

%Zad2
					  
owns(john,book(wuthering_heights, author(emily,bronte))).
owns(adam,book(harry_potter, author(kate,bronte))).
owns(jacek,book(teoria_obliczen, author(mary,smith))).
owns(bartek,book(paradygmaty, author(pavlo,symonenko))).
owns(john,book(kuchniaswiata, author(emily,bronte))).

%owns(john,X).
%owns(_,book(X,_)).
%owns(_,book(R,author(emily,bronte))).
%owns(X,book(paradygmaty,author(I,N))).
%owns(_,book(_,author(X,bronte))).

%Zad3

p([H|_],H).
d([_,D|_],D).

przedost([X,_],X).
przedost([_|Z],X) :- przedost(Z,X).

ost([X],X).
ost([_|Z],X) :- ost(Z,X).

%Zad4

suma([],0).
suma([H|T],R) :- suma(T,R1), R is H + R1.

sumaD([],0).
sumaD([H|T],R) :- sumaD(T,R1), (H>0, R is H + R1; H=<0, R is R1).

%Zad5
odwrocA([],Z,Z).
odwrocA([H|T],Z,Acc) :- odwrocA(T,Z,[H|Acc]).

%Zad6

addP(X,List,[X|List]).

addK(X,List,W) :- odwrocA(List,W1,[]), addP(X,W1,W2), odwrocA(W2,W,[]).
