sumMaxList([], [], 0).

sumMaxList([], List2, Sum) :-
    sum_list(List2, Sum).

sumMaxList(List1, [], Sum) :-
    sum_list(List1, Sum).

sumMaxList(List1, List2, MaxSum) :-
    sum_list(List1, Sum1),
    sum_list(List2, Sum2),
    MaxSum is max(Sum1, Sum2).