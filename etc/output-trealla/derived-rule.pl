:- op(1200, xfx, :+).

answer('urn:example:is'('urn:example:test',true)).

step('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Minka','urn:example:Cat'),('urn:example:is'('urn:example:test',true):+'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(A,'urn:example:Dog'))).
step('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Charly','urn:example:Dog'),'urn:example:is'('urn:example:test',true)).
