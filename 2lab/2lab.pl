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
have('Ivan', rub(10000)).
have('Kolya', rub(20000)).
have('Ivan', tv).
have('Ivan', car(volga, 32000, cherry, 1)).
have('Ivan', tape).
have('Petr', rub(5000)).
have('Petr', tv).
have('Petr', freeze).
have('Kolya', tv).

% 2.6 b)
%Какие вещи имеет Иван, которых нет у Николая?
%(Деньги - не вещь)

% have('Petr', What). %Что имеет Петр?
% have(Who, rub(X)), X > 10000. %Кто имеет 10000 рублей?
% have(Who, What). %Кто что имеет?
 have_ivan_not_kolya(X) :- have('Ivan', X), \+ (have('Kolya', X), X = rub(_)). %Какие вещи имеет Иван, которых нет у Николая?

price('video', rub(12000)).
price('tv', rub(8400)).
price('freezer', rub(4200)).
price('magni', rub(350)).
price('radio', rub(1300)).
price('watch', rub(500)).

%d)
%can_buy_video :- have('Petr', rub(X)), price('video', Y) X >= Y.
%У кого больше всего денег? (коммент Ольгу)
%have(Who, rub(X)), have(Who2, rub(Y)), have(Who3, rub(Z)), Who \= Who2, Who \= Who3, Who2 \= Who3, X > Y, X > Z.

% e)
can_buy(People, Thing) :- have(People, rub(Rub)), price(Thing, rub(Price)), Rub >= Price, not(have(People,Thing)), Thing \= rub(_).

%f)
what_buy_Kolya :- \+ have(People,Thing), have('Kolya', rub(Rub)), price(X, Price), Rub > Price.
what_buy_Kolya_and_has_Ivan(X) :- have('Kolya', rub(Rub)), price(X, rub(Price)), Rub > Price, have('Ivan', Thing).

%g)
married('Anna', 'Kolya').
married('Mary', 'Ivan').
married('Olga', 'Petr').

%h)
have(Wife, Thing) :- married(Wife, Husband), have(Husband, Thing).

%i)
%Имеет ли Мария машину?
%have('Mary', car(_,_,_,_)).
%Что может купить Анна, чего не имеет Мария?
%can_buy('Anna', Thing), not(have('Mary', Thing)).
