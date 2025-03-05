:- op(1200, xfx, :+).

bus(('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(s, 'C'):+'http://www.w3.org/2000/01/rdf-schema#domain'(p, 'C'), call(p, s, o))).
bus((q(s, o):+'http://www.w3.org/2000/01/rdf-schema#subPropertyOf'(p, q), call(p, s, o), q(s, o)=..[q, s, o])).
bus((true:+'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(s, 'C'))).
bus((true:+q(s, o))).
