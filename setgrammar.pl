parse(Tokens) :-
    g(Tokens, []).

g(Tokens, Rest) :-
    s(Tokens, ['=' | Rest1]),
    s(Rest1, Rest).
g(Tokens, Rest) :-
    t(Tokens, ['in' | Rest1]),
    s(Rest1, Rest).

s(['{' | Tokens], Rest) :-
    l(Tokens, ['}' | Rest]).
s(['{', '}' | Rest], Rest).

l(Tokens, Rest) :-
    t(Tokens, Rest).
l(Tokens, Rest) :-
    t(Tokens, [',' | Rest1]),
    l(Rest1, Rest).

t(['a' | Rest], Rest).
t(['b' | Rest], Rest).
t(['c' | Rest], Rest).