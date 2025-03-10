:- op(1200, xfx, :+).

answer('urn:example:is'('urn:example:water', 'urn:example:observable')).

step('urn:example:InorganicCompound'('urn:example:water'), 'urn:example:allPossibleCases'(['urn:example:water'], ['urn:example:is'('urn:example:water', 'urn:example:solid'), 'urn:example:is'('urn:example:water', 'urn:example:liquid'), 'urn:example:is'('urn:example:water', 'urn:example:gas')])).
