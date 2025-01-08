minlist([], [], []).
minlist([], L2, L2).
minlist(L1, [], L1).

minlist([H1|T1], [H2|T2], [Min|TMin]) :- 
    Min is min(H1, H2),
    minlist(T1, T2, TMin).