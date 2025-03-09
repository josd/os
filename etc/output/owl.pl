:- op(1200, xfx, :+).

answer('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(large,'Size')).
answer('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(medium,'Size')).
answer('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(small,'Size')).
answer(q(o,s)).

step(('http://www.w3.org/2002/07/owl#inverseOf'(p,q),call(p,s,o),q(o,s)=.."qos"),q(o,s)).
step('http://www.w3.org/2002/07/owl#inverseOf'(p,q),'http://www.w3.org/2002/07/owl#inverseOf'(q,p)).
step(('http://www.w3.org/2002/07/owl#oneOf'('Size',[large,medium,small]),member(large,[large,medium,small])),'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(large,'Size')).
step(('http://www.w3.org/2002/07/owl#oneOf'('Size',[large,medium,small]),member(medium,[large,medium,small])),'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(medium,'Size')).
step(('http://www.w3.org/2002/07/owl#oneOf'('Size',[large,medium,small]),member(small,[large,medium,small])),'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(small,'Size')).
