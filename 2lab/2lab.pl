% 2.2

car(moskvich, 9500, green, 1).
car(moskvich, 3000, blue, 5).
car(volga, 15000, black, 1).
car(volga, 8000, white, 6).
car(UAZ, 9000, green, 3).
car(VAZ, 6000, white, 4).
car(VAZ, 4000, blue, 10).
car('VAZ-2108', 8000, gray, 2).

% 2.2 b)
% car(Model, Price, Color, Age), Price < 5000.

% 2.2 c)
buy_car(X) :- car(Model, Price, Color, Age), (Color == green ; Color == blue), Price =< X, Age < 3.

% 2.2 d)
% car(Model, Price, Color, Age), Price == 10000.

% 2.4

have('Oleg', book('Pushkin', 'Capitan`s daughter')).
have('Lena', book('Monten', 'Experiments')).
have('Ira', babushka(blue)).
have('Lena', babushka(red)).

% have(X, book('Monten', '_')). % Кто имеет какую-нибудь книгу Монтеня?
% have(X, book('_', Book)). % Кто какую книгу имеет?
% have(Who, What). % Кто что имеет?
% have('Lena', babushka(blue)). % Верно ли, что Лена имеет синий платок?

% 2.5
only_lives_in_land(Animal) :- lives(Animal, land), \+ (lives(Animal, Other), Other \= land).
lives_in_many(Animal) :- lives(Animal, land), (lives(Animal, Place1), lives(Animal, Place2), Place1 \= Place2).

% 2.6
have('Ivan', rub('10000')).
have('Ivan', tv).
have('Ivan', car(volga, 32000, cherry, 1)).
have('Ivan', tape).
have('Petr', rub('5000')).
have('Petr', tv).
have('Petr', freeze).
have('Kolya', rub('20000')).
have('Kolya', tv).

% 2.6 b)
%Какие вещи имеет Иван, которых нет у Николая?
%(Деньги - не вещь)

% have('Petr', What). %Что имеет Петр?
% have(Who, rub('10000')). %Кто имеет 10000 рублей?
% have(Who, What). %Кто что имеет?
 have_ivan_not_kolya(X) :- have('Ivan', X), \+ (have('Kolya', X), X = rub(_)). %Какие вещи имеет Иван, которых нет у Николая?

