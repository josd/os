:- op(1200, xfx, :+).

answer('urn:example:dijkstra'("af",["acbdef",13])).
answer('urn:example:dijkstra'("af",["acbdf",14])).
answer('urn:example:dijkstra'("af",["abdef",14])).
answer('urn:example:dijkstra'("af",["abdf",15])).
answer('urn:example:dijkstra'("af",["acef",15])).
answer('urn:example:dijkstra'("af",["acdef",15])).
answer('urn:example:dijkstra'("af",["acdf",16])).

step(edge("ab",4),edge("ba",4)).
step(edge("ac",2),edge("ca",2)).
step(edge("bc",1),edge("cb",1)).
step(edge("bd",5),edge("db",5)).
step(edge("cd",8),edge("dc",8)).
step(edge("ce",10),edge("ec",10)).
step(edge("de",2),edge("ed",2)).
step(edge("df",6),edge("fd",6)).
step(edge("ef",3),edge("fe",3)).
