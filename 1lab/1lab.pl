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

athlete(X) :- likes(X, Sport), sport(Sport). %