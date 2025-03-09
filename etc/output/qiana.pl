:- op(1200, xfx, :+).

answer('urn:example:believes'('urn:example:Fabian',('urn:example:notNecessarilyA'(A,'urn:example:gold'):+'urn:example:glitter'(A)))).
answer('urn:example:notNecessarilyA'('urn:example:northStar','urn:example:gold')).

step('urn:example:says'('urn:example:Einstein',('urn:example:notNecessarilyA'(A,'urn:example:gold'):+'urn:example:glitter'(A))),('urn:example:notNecessarilyA'(A,'urn:example:gold'):+'urn:example:glitter'(A))).
step('urn:example:glitter'('urn:example:northStar'),'urn:example:notNecessarilyA'('urn:example:northStar','urn:example:gold')).
