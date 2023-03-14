% 3.1
%song:- write('run,'),song.
song(X):-(X>1),write('run,'),(Y is X - 1),song(Y).

% 3.2
factorial(1, 1).
factorial(N,F) :- N > 1, N1 is N-1, factorial(N1, F1), F is N*F1.