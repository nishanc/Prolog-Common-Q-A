% -------------------------------------------------|
% ----------------Answers for Q3(a)----------------|
% -------------------------------------------------|
means(0,zero).
means(1,one).
means(2,two).
means(3,three).
means(4,four).
means(5,five).
means(6,six).
means(7,seven).
means(8,eight).
means(9,nine).

translateList([],[]).

translateList([X|List1],[L|List2]):-means(X,L),translateList(List1,List2).

% -------------------------------------------------------|
% ----------------Answers for Q3(b)(i)(1)----------------|
% -------------------------------------------------------|
conc([],L,L).
conc([Head|L1],L2,[Head|L]):-conc(L1,L2,L).
cutlast([H|L1], [H|L2]):-conc(L2,[_],L1).
% -------------------------------------------------------|
% ----------------Answers for Q3(b)(i)(2)----------------|
% -------------------------------------------------------|
cutlast([_], []).
cutlast([H|L1], [H|L2]):-cutlast(L1, L2).
% OR
% cutlast(L1, L2):-reverse(L1,[_|R]),reverse(R, L2).
% --------------------------------------------------------|
% ----------------Answers for Q3(b)(ii)(1)----------------|
% --------------------------------------------------------|
trim(L1,N,L2) :-conc(L2,_,L1) ,length(L2,N).
% --------------------------------------------------------|
% ----------------Answers for Q3(b)(ii)(2)----------------|
% --------------------------------------------------------|
trim(L,0,L).
trim([_|L1],M,L2) :- M > 0 ,N is M-1 ,trim(L1,N,L2).