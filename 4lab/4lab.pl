% 4.2

size(1, S) :- S >= 158, S < 164.
size(2, S) :- S >= 164, S < 170.
size(3, S) :- S >= 170, S < 176.
size(4, S) :- S >= 176, S < 182.
size(5, S) :- S >= 182, S < 188.

size(Size, S) :-
    Size is (S - 158) / 6 + 1,
    Size >= 1,
    Size =< 5.

size(Size,159).