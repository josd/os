:- op(1200, xfx, :+).

bus((true:+'urn:example:propositionProver'(-a,+to_be# -to_be))).
bus((true:+'urn:example:propositionProver'(-a& -a,-a))).
bus((true:+'urn:example:propositionProver'(-a,+b# -a))).
bus((true:+'urn:example:propositionProver'(-a& -b,-b& -a))).
bus((true:+'urn:example:propositionProver'(-a,-b# +b& -a))).
bus((true:+'urn:example:propositionProver'(-a# -b# +c,-b# -a# +c))).
bus((true:+'urn:example:propositionProver'(-a# +b,+b& -c# -a# +c))).
bus((true:+'urn:example:propositionProver'((-a# +c)&(-b# +c),-a& -b# +c))).
