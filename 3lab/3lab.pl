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
% с накопителем
fibonacci_acc(N) :- fib_acc(N, 0, 1).
fib_acc(N, Previous, Current) :- Current =< N, write(Current), write(','), Next is Previous + Current, Previous1 is Current, fib_acc(N, Previous1, Next).

% без накопителем
fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, F) :-
  N > 1,
  N1 is N - 1,
  N2 is N - 2,
  fibonacci(N1, F1),
  fibonacci(N2, F2),
  F is F1 + F2.

% 3.7
% нечетные
fibonacci_sum_odd(N, Sum) :- fibonacci_sum_odd(N, 0, Sum).
fibonacci_sum_odd(0, Sum, Sum).
fibonacci_sum_odd(N, Acc, Sum) :-
    fibonacci(N, F),
    Odd is F mod 2,
    NewAcc is Acc + (Odd * F),
    N1 is N - 1,
    fibonacci_sum_odd(N1, NewAcc, Sum).


% четные
fibonacci_sum_even(N, Sum) :- fibonacci_sum_even(N, 0, Sum).
fibonacci_sum_even(0, Sum, Sum).
fibonacci_sum_even(N, Acc, Sum) :-
    fibonacci(N, F),
    Even is F mod 2,
    (Even =:= 0 -> NewAcc is Acc + F; NewAcc is Acc),
    N1 is N - 1,
    fibonacci_sum_even(N1, NewAcc, Sum).

% 3.8
% Является ли суммой первых четных чисел
is_sum_of_even(Number, N) :-
    between(1,100,N),
    fibonacci_sum_even(N,Sum),
    Sum =:= Number,
    !.

% Является ли суммой первых нечетных чисел
is_sum_of_odd(Number, N) :-
    between(1,100,N),
    fibonacci_sum_odd(N,Sum),
    Sum =:= Number,
    !.

% 3.8
ack(0, Y, R) :- R is Y + 1.

ack(X, 0, R) :-
  X > 0,
  X1 is X - 1,
  ack(X1, 1, R).

ack(X, Y, R) :-
  X > 0,
  Y > 0,
  X1 is X - 1,
  Y1 is Y - 1,
  ack(X, Y1, R1),
  ack(X1, R1, R).

%ackermann(1, 5, R).