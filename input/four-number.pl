% we have 4 numbers
% their sum is 26
% their product is -9100
% the sum of their squares is 994
% the sum of their cubes is 15086
% what are those 4 numbers?

:- op(1200, xfx, :+).

:- use_module(library(clpz)).

'urn:example:4color'([A, B, C, D], true) :-
    A + B + C + D #= 26,
    A * B * C * D #= -9100,
    A^2 + B^2 + C^2 + D^2 #= 994,
    A^3 + B^3 + C^3 + D^3 #= 15086,
    label([A, B, C, D]),
    !.

% query
true :+ 'urn:example:4color'(_, _).
