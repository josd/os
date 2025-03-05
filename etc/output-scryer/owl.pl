:- op(1200, xfx, :+).

bus((q(o,s):+'http://www.w3.org/2002/07/owl#inverseOf'(p,q),call(p,s,o),q(o,s)=.."qos")).
bus(('http://www.w3.org/2002/07/owl#inverseOf'(q,p):+'http://www.w3.org/2002/07/owl#inverseOf'(p,q))).
bus(('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(large,'Size'):+'http://www.w3.org/2002/07/owl#oneOf'('Size',[large,medium,small]),member(large,[large,medium,small]))).
bus(('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(medium,'Size'):+'http://www.w3.org/2002/07/owl#oneOf'('Size',[large,medium,small]),member(medium,[large,medium,small]))).
bus(('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(small,'Size'):+'http://www.w3.org/2002/07/owl#oneOf'('Size',[large,medium,small]),member(small,[large,medium,small]))).
bus((true:+'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(large,'Size'))).
bus((true:+'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(medium,'Size'))).
bus((true:+'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(small,'Size'))).
bus((true:+q(o,s))).
