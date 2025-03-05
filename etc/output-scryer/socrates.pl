:- op(1200, xfx, :+).

bus(('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('Socrates','urn:example:Mortal'):+'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('Socrates','urn:example:Man'))).
bus((true:+'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('Socrates','urn:example:Man'))).
bus((true:+'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('Socrates','urn:example:Mortal'))).
