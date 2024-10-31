
:- discontiguous is_a/2.
:- discontiguous part_of/2.

:- table is_a/2.
:- table part_of/2.

% Факти родо-видових зв'язків (is_a)
is_a(fruit, food).
is_a(vegetable, food).
is_a(meat, food).
is_a(grain_product, food).
is_a(dish, food).

is_a(apple, fruit).
is_a(banana, fruit).
is_a(cherry, fruit).

is_a(gala_apple, apple).
is_a(fuji_apple, apple).
is_a(red_banana, banana).
is_a(burro_banana, banana).
is_a(sweet_cherry, cherry).
is_a(sour_cherry, cherry).

is_a(carrot, vegetable).
is_a(potato, vegetable).
is_a(cucumber, vegetable).

is_a(chicken, meat).
is_a(beef, meat).
is_a(fish, meat).

is_a(bread, grain_product).
is_a(rice, grain_product).
is_a(pasta, grain_product).

is_a(soup, dish).
is_a(pizza, dish).
is_a(salad, dish).

% Факти частина-ціле (part_of)
part_of(seed, apple).
part_of(peel, banana).
part_of(skin, potato).
part_of(slice, bread).
part_of(dough, pizza).
part_of(leaf, salad).
part_of(ingredient, dish).


% Транзитивність родо-видових зв'язків
is_a(X, Z) :- is_a(X, Y), is_a(Y, Z).

% Транзитивність зв'язків частина-ціле
part_of(X, Z) :- part_of(X, Y), part_of(Y, Z).

