:- op(1200, xfx, :+).

answer('urn:example:dijkstra'([a, f], [[a, c, b, d, e, f], 13])).
answer('urn:example:dijkstra'([a, f], [[a, c, b, d, f], 14])).
answer('urn:example:dijkstra'([a, f], [[a, b, d, e, f], 14])).
answer('urn:example:dijkstra'([a, f], [[a, b, d, f], 15])).
answer('urn:example:dijkstra'([a, f], [[a, c, e, f], 15])).
answer('urn:example:dijkstra'([a, f], [[a, c, d, e, f], 15])).
answer('urn:example:dijkstra'([a, f], [[a, c, d, f], 16])).

step(edge([a, b], 4), edge([b, a], 4)).
step(edge([a, c], 2), edge([c, a], 2)).
step(edge([b, c], 1), edge([c, b], 1)).
step(edge([b, d], 5), edge([d, b], 5)).
step(edge([c, d], 8), edge([d, c], 8)).
step(edge([c, e], 10), edge([e, c], 10)).
step(edge([d, e], 2), edge([e, d], 2)).
step(edge([d, f], 6), edge([f, d], 6)).
step(edge([e, f], 3), edge([f, e], 3)).
