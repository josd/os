:- op(1200, xfx, :+).

bus((policy(allow, john, sk_0):+user_role(john, admin))).
bus((policy(deny, sk_0, report1):+resource_confidentiality(report1, confidential))).
bus((policy(allow, jane, sk_0):+user_department(jane, it))).
bus((true:+'urn:example:accessControl'(john, report1, allow))).
bus((true:+'urn:example:accessControl'(jane, report2, allow))).
bus((true:+'urn:example:accessControl'(bob, report1, allow))).
