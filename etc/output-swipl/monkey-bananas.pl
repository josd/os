:- op(1200, xfx, :+).

bus((true:+'urn:example:plan'([go(loc3), push(loc1), climb_on, grab]))).
bus((true:+'urn:example:plan'([go(loc1), go(loc3), push(loc1), climb_on, grab]))).
bus((true:+'urn:example:plan'([go(loc3), push(loc1), climb_on, grab, climb_off]))).
bus((true:+'urn:example:plan'([go(loc3), push(loc2), push(loc1), climb_on, grab]))).
