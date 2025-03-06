:- op(1200, xfx, :+).

answer('urn:example:accessControl'(john, report1, allow)).
answer('urn:example:accessControl'(jane, report2, allow)).
answer('urn:example:accessControl'(bob, report1, allow)).

step(user_role(john, admin), policy(allow, john, sk_0)).
step(resource_confidentiality(report1, confidential), policy(deny, sk_0, report1)).
step(user_department(jane, it), policy(allow, jane, sk_0)).
