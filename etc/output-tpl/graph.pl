:- op(1200, xfx, :+).

bus(('urn:example:path'('urn:example:paris','urn:example:orleans'):+'urn:example:oneway'('urn:example:paris','urn:example:orleans'))).
bus(('urn:example:path'('urn:example:paris','urn:example:chartres'):+'urn:example:oneway'('urn:example:paris','urn:example:chartres'))).
bus(('urn:example:path'('urn:example:paris','urn:example:amiens'):+'urn:example:oneway'('urn:example:paris','urn:example:amiens'))).
bus(('urn:example:path'('urn:example:orleans','urn:example:blois'):+'urn:example:oneway'('urn:example:orleans','urn:example:blois'))).
bus(('urn:example:path'('urn:example:orleans','urn:example:bourges'):+'urn:example:oneway'('urn:example:orleans','urn:example:bourges'))).
bus(('urn:example:path'('urn:example:blois','urn:example:tours'):+'urn:example:oneway'('urn:example:blois','urn:example:tours'))).
bus(('urn:example:path'('urn:example:chartres','urn:example:lemans'):+'urn:example:oneway'('urn:example:chartres','urn:example:lemans'))).
bus(('urn:example:path'('urn:example:lemans','urn:example:angers'):+'urn:example:oneway'('urn:example:lemans','urn:example:angers'))).
bus(('urn:example:path'('urn:example:lemans','urn:example:tours'):+'urn:example:oneway'('urn:example:lemans','urn:example:tours'))).
bus(('urn:example:path'('urn:example:angers','urn:example:nantes'):+'urn:example:oneway'('urn:example:angers','urn:example:nantes'))).
bus(('urn:example:path'('urn:example:paris','urn:example:blois'):+'urn:example:path'('urn:example:paris','urn:example:orleans'),'urn:example:path'('urn:example:orleans','urn:example:blois'))).
bus(('urn:example:path'('urn:example:paris','urn:example:bourges'):+'urn:example:path'('urn:example:paris','urn:example:orleans'),'urn:example:path'('urn:example:orleans','urn:example:bourges'))).
bus(('urn:example:path'('urn:example:paris','urn:example:lemans'):+'urn:example:path'('urn:example:paris','urn:example:chartres'),'urn:example:path'('urn:example:chartres','urn:example:lemans'))).
bus(('urn:example:path'('urn:example:orleans','urn:example:tours'):+'urn:example:path'('urn:example:orleans','urn:example:blois'),'urn:example:path'('urn:example:blois','urn:example:tours'))).
bus(('urn:example:path'('urn:example:chartres','urn:example:angers'):+'urn:example:path'('urn:example:chartres','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:angers'))).
bus(('urn:example:path'('urn:example:chartres','urn:example:tours'):+'urn:example:path'('urn:example:chartres','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:tours'))).
bus(('urn:example:path'('urn:example:lemans','urn:example:nantes'):+'urn:example:path'('urn:example:lemans','urn:example:angers'),'urn:example:path'('urn:example:angers','urn:example:nantes'))).
bus((true:+'urn:example:path'('urn:example:angers','urn:example:nantes'))).
bus((true:+'urn:example:path'('urn:example:lemans','urn:example:nantes'))).
bus(('urn:example:path'('urn:example:paris','urn:example:tours'):+'urn:example:path'('urn:example:paris','urn:example:orleans'),'urn:example:path'('urn:example:orleans','urn:example:tours'))).
bus(('urn:example:path'('urn:example:paris','urn:example:angers'):+'urn:example:path'('urn:example:paris','urn:example:chartres'),'urn:example:path'('urn:example:chartres','urn:example:angers'))).
bus(('urn:example:path'('urn:example:chartres','urn:example:nantes'):+'urn:example:path'('urn:example:chartres','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:nantes'))).
bus(('urn:example:path'('urn:example:paris','urn:example:nantes'):+'urn:example:path'('urn:example:paris','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:nantes'))).
bus((true:+'urn:example:path'('urn:example:chartres','urn:example:nantes'))).
bus((true:+'urn:example:path'('urn:example:paris','urn:example:nantes'))).
