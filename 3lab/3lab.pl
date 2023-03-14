% 3.1
%song:- write('run,'),song.
song(X):-(X>1),write('run,'),(Y is X - 1),song(Y).

% 3.2
%factorial(1, 1).
%factorial(N,F) :- N > 1, N1 is N-1, factorial(N1, F1), F is N*F1.

% 3.3
/* factorial(N,FactN):- fact(N,FactN,1,1).
fact(N,FactN,I,P):- /* накопитель I - аналог счетчика */
I<N, /* накопитель P – промежуточное значение факториала*/
I1 is I+1, /* FactN - значение факториала */
P1 is P*I1,
fact(N,FactN,I1,P1).
fact(N,FactN,N,FactN). */

% 3.4
factorial(N,FactN):- fact(N,FactN,1).
fact(N,FactN,P):-
N>0,
P1 is P*N,
N1 is N-1,
fact(N1,FactN,P1).
fact(0,FactN,FactN).

% 3.5
kurs(1, gruppa('Shakspear', gruppa('Molier', gruppa('Chehov')))).
kurs(2, gruppa('Gilbert', gruppa('Ailer', gruppa('Lebniz', gruppa('Kantor'))))).

% ?- kurs(1,X). -->  X = gruppa('Shakspear', gruppa('Molier', gruppa('Chehov'))).

% ?- kurs(N, gruppa(X,Y)) -->  N = 1, X = 'Shakspear', Y = gruppa('Molier', gruppa('Chehov')) ; N = 2, X = 'Gilbert', Y = gruppa('Ailer', gruppa('Lebniz', gruppa('Kantor')))

% ?- kurs(N1, gruppa(X, gruppa(Y,Z))). -->  N1 = 1, X = 'Shakspear', Y = 'Molier', Z = gruppa('Chehov') ;  N1 = 2, X = 'Gilbert', Y = 'Ailer', Z = gruppa('Lebniz', gruppa('Kantor'))

% 3.6
fibonacci_acc(N) :- fib_acc(N, 0, 1).
fib_acc(N, Previous, Current) :- Current =< N, write(Current), write(','), Next is Previous + Current, Previous1 is Current, fib_acc(N, Previous1, Next).


/*fibonacci(0).
fibonacci(1).
fibonacci(N) :- N > 1, N1 is N-1,  fibonacci(N1), write(N), fibonacci(N-2),  write(','). */

fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, F) :- N > 1, N1 is N-1, fibonacci(N1, F1), N2 is N-2, fibonacci(N2, F2), F is F1 + F2.

fib_print(0).
fib_print(1).
fib_print(N) :- N > 1, N1 is N-1, fib_print(N1), fibonacci(N, F), write(F), write(', ').

