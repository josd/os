:- op(1200, xfx, :+).

answer('urn:example:propositionProver'(-a, +to_be# -to_be)).
answer('urn:example:propositionProver'(-a& -a, -a)).
answer('urn:example:propositionProver'(-a, +b# -a)).
answer('urn:example:propositionProver'(-a& -b, -b& -a)).
answer('urn:example:propositionProver'(-a, -b# +b& -a)).
answer('urn:example:propositionProver'(-a# -b# +c, -b# -a# +c)).
answer('urn:example:propositionProver'(-a# +b, +b& -c# -a# +c)).
answer('urn:example:propositionProver'((-a# +c)&(-b# +c), -a& -b# +c)).
