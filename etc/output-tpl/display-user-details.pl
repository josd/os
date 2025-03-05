:- op(1200, xfx, :+).

bus((true:+'urn:example:display'(user_1,perm(['Patrick']),not(['Brugge',1971])))).
bus((true:+'urn:example:display'(user_1,perm(['Brugge']),not(['Patrick',1971])))).
bus((true:+'urn:example:display'(user_1,perm([1971]),not(['Patrick','Brugge'])))).
bus((true:+'urn:example:display'(user_1,perm(['Brugge','Patrick']),not([1971])))).
bus((true:+'urn:example:display'(user_1,perm([1971,'Patrick']),not(['Brugge'])))).
bus((true:+'urn:example:display'(user_1,perm([1971,'Brugge']),not(['Patrick'])))).
