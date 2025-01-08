word("understand", [u, n, d, e, r, s, t, a, n, d]).
word("recursions", [r, e, c, u, r, s, i, o, n, s]).
word("recursion", [r, e, c, u, r, s, i, o, n]).
word("order", [o, r, d, e, r]).
word("first", [f, i, r, s, t]).
word("one", [o, n, e]).
word("to", [t, o]).
word("in", [i, n]).

puzzle(W1, W2, W3, W4) :-
    word(W1, L1), length(L1, 10),
    word(W2, L2), length(L2, 10), W1 \= W2,
    word(W3, L3), length(L3, 2), W1 \= W3, W2 \= W3,
    word(W4, L4), length(L4, 5), W1 \= W4, W2 \= W4, W3 \= W4,
    nth1(7, L1, X1), nth1(1, L3, X1),
    nth1(5, L1, X2), nth1(5, L2, X2), nth1(2, L4, X2),
    nth1(5, L4, X3), nth1(5, L2, X3).