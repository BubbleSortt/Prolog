% 4.2

size(1, S) :- S >= 158, S < 164.
size(2, S) :- S >= 164, S < 170.
size(3, S) :- S >= 170, S < 176.
size(4, S) :- S >= 176, S < 182.
size(5, S) :- S >= 182, S < 188.

/*
Отнимаем размер S от минимального(158) и получаем диапазон 0-29
Делим на 6(Потому шаг размерной сетки - 6. 158-163,164-169)
Добавляем 1(обрабатываем случай минимального размера)
*/
size(Size, S) :-
    Size is (S - 158) / 6 + 1,
    Size >= 1,
    Size =< 5.

size(Size,159).

% 4.3

%Главное отличие в том, что предикат fail не спрашивает продолжать искать альтернативы или нет, а сразу их ищет
a:- write(1).
a:- write(2).
b(X):- a,X='еще'.
c:- a.
d:- a,fail.

% ?-b(X).
% ?-c.
% ?-d.


% 4.4

country('England','London').
country('Russia','Moscow').
country('France','Paris').
country('China','Pekin').
country('Japan','Tokyo').
country('Italy','Rome').

print_capitals :- country(Country, Capital), write(Capital), nl, fail.

% 4.5
% 121212121212, с предикатом repeat мы будем бесконечно искать альтернативные решения a, а с предикатом fail поиск новых решений будет происходить автоматически
%repeat,a,fail.

% 4.6
% repeat, read(X), write(X), X=stop.