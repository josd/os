:- op(1200, xfx, :+).

answer('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(s, 'C')).
answer(q(s, o)).

step(('http://www.w3.org/2000/01/rdf-schema#domain'(p, 'C'), call(p, s, o)), 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(s, 'C')).
step(('http://www.w3.org/2000/01/rdf-schema#subPropertyOf'(p, q), call(p, s, o), q(s, o)=..[q, s, o]), q(s, o)).
