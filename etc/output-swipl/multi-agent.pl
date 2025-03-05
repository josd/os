:- op(1200, xfx, :+).

bus((true:+'urn:example:obligatory'('urn:example:complete:task'('urn:example:agent2', 'urn:example:task1')))).
bus((true:+'urn:example:obligatory'('urn:example:escalate:task'('urn:example:agent1', 'urn:example:task1')))).
bus((true:+'urn:example:permitted'('urn:example:execute:task'('urn:example:agent2', 'urn:example:task1')))).
bus((true:+'urn:example:violation'('urn:example:task1'))).
bus((true:+'urn:example:sanction'('urn:example:agent2'))).
