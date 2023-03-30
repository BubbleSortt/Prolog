% 5.1
write_list([]).
write_list([H|T]):- /* разделение списка на голову и хвост, */
write(H), nl, /* печать головы, пропуск строки */
write_list(T)./*рекурсивный вызов предиката от оставшегося списка*/

/* - 1
    2
    a
    3 */

% 5.2
% Длина списка
list_length([], 0).
list_length([_|Tail], N) :- list_length(Tail, N1), N is N1 + 1.

%list_length([1,2,3,4], Length). - Length = 4

% Определение принадлежности элемента к списку
includes(X, [X|_]).
includes(X, [_|Tail]) :- member(X, Tail).

% includes(4, [1,2,3]). - false
% includes(1, [1,2,3]). - true

% Сумма
sum_list([], 0).
sum_list([Head|Tail], Sum) :- sum_list(Tail, Sum1), Sum is Head + Sum1.

% sum_list([1, 2, 3, 4], Sum). - Sum = 10

% Максимум
max_list([X], X).
max_list([Head|Tail], Max) :- max_list(Tail, Max1), Max is max(Head, Max1).

% max_list([1, 2, 3, 35], Max). - Max = 35

%Минимум
min_list([X], X).
min_list([Head|Tail], Min) :- max_list(Tail, Min1), Min is min(Head, Min1).

% min_list([1, 2, 3, 35], Min). - Min = 1

%Инверсия списка

reverse([], []).
reverse([Head|Tail], R) :- reverse(Tail, TR), append(TR, [Head], R).

% reverse([1,2,3], N). - N = [3, 2, 1]