:- op(1200, xfx, :+).

bus(((false:+'urn:example:is'('urn:example:it','urn:example:raining')):+('urn:example:is'('urn:example:ground','urn:example:wet'):+'urn:example:is'('urn:example:it','urn:example:raining')),(false:+'urn:example:is'('urn:example:ground','urn:example:wet')))).
bus((true:+(false:+'urn:example:is'('urn:example:ground','urn:example:wet')))).
bus((true:+(false:+'urn:example:is'('urn:example:it','urn:example:raining')))).
