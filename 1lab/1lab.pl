% 1.1
likes(ellen, tennis).
likes(john, football).
likes(tom, baseball).
likes(eric, swimming).
likes(mark, tennis).
likes(bill,X):-likes(tom,X). % Билл любит то же, что и том

% 1.2
likes(ellen, reading).
likes(mark, computers).
likes(john, badminton).
likes(eric, reading).

sport(badminton).
sport(tennis).
sport(football).
sport(baseball).

athlete(X) :- likes(X, Sport), sport(Sport). % человек атлет, если он любит спорт и спорт проверяется предикатом sport
athlete(tom). % true - потому что Том любит бейсбол, а бейсбол это спорт
athlete(eric). % false - Эрик любит плавать, но плавать это не спорт

% 1.3
% Чтобы предикат debug что то показывал, нужно указать предикаты которые нужно отслеживать.
% Debug->Edit spy points->Predicate -> (Глазик будет показывать логи)
% предикат trace показывает выполнение предикатов

%trace.
%athlete(tom).


% 1.5
lives(zebra, land).
lives(dog, land).
lives(carp, water).
lives(wheal, water).
lives(cat, X) :- lives(dog, X).
lives(crocodile, water).
lives(crocodile, land).
lives(frog, water).
lives(frog, land).
lives(duck, land).
lives(duck, water).
lives(eagle, air).
lives(eagle, land).
lives(vorobey, water).
lives(vorobey, land).

% lives(Who, Where).
%
% lives(X, land), lives(X, water).


