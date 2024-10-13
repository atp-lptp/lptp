
sequence(L):-L=[_,_,_,_,_,_,_,_,_,
		_,_,_,_,_,_,_,_,_,
		_,_,_,_,_,_,_,_,_].

%query: q(o).
q(S):-sequence(S),
	sublist([1,_,1,_,1],S),
	sublist([2,_,_,2,_,_,2],S),
	sublist([3,_,_,_,3,_,_,_,3],S),
	sublist([4,_,_,_,_,4,_,_,_,_,4],S),
	sublist([5,_,_,_,_,_,5,_,_,_,_,_,5],S),
	sublist([6,_,_,_,_,_,_,6,_,_,_,_,_,_,6],S),
	sublist([7,_,_,_,_,_,_,_,7,_,_,_,_,_,_,_,7],S),
	sublist([8,_,_,_,_,_,_,_,_,8,_,_,_,_,_,_,_,_,8],S),
	sublist([9,_,_,_,_,_,_,_,_,_,9,_,_,_,_,_,_,_,_,_,9],S).

sublist(Xs,Ys):-append(_,Zs,Ys),append(Xs,_,Zs).

append([],Ys,Ys).
append([X|Xs],Ys,[X|Zs]):-append(Xs,Ys,Zs).

