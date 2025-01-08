postfix(_, []).

postfix(List1, List2) :-
    append(_, List2, List1).