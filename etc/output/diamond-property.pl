:- op(1200, xfx, :+).

answer(('urn:example:re'(b, sk_0), 'urn:example:re'(c, sk_0))).

step(true, ('urn:example:re'(a, b), 'urn:example:re'(a, c))).
step('urn:example:re'(a, b), 'urn:example:e'(a, a)).
step('urn:example:re'(a, b), 'urn:example:e'(b, b)).
step('urn:example:re'(a, c), 'urn:example:e'(c, c)).
step('urn:example:e'(a, a), 'urn:example:re'(a, a)).
step('urn:example:e'(b, b), 'urn:example:re'(b, b)).
step('urn:example:e'(c, c), 'urn:example:re'(c, c)).
step('urn:example:re'(b, b), 'urn:example:not_re'(c, b)).
step('urn:example:re'(c, c), 'urn:example:not_re'(b, c)).
step(('urn:example:not_re'(c, b), 'urn:example:re'(a, b)), 'urn:example:not_e'(c, a)).
step(('urn:example:not_re'(c, b), 'urn:example:re'(b, b)), 'urn:example:not_e'(c, b)).
step(('urn:example:not_re'(b, c), 'urn:example:re'(a, c)), 'urn:example:not_e'(b, a)).
step(('urn:example:not_re'(b, c), 'urn:example:re'(c, c)), 'urn:example:not_e'(b, c)).
step('urn:example:not_e'(c, a), 'urn:example:not_e'(a, c)).
step('urn:example:not_e'(b, a), 'urn:example:not_e'(a, b)).
step(('urn:example:re'(a, b), 'urn:example:not_e'(a, b)), 'urn:example:r'(a, b)).
step(('urn:example:re'(a, c), 'urn:example:not_e'(a, c)), 'urn:example:r'(a, c)).
step(('urn:example:r'(a, b), 'urn:example:r'(a, b)), ('urn:example:r'(b, sk_0), 'urn:example:r'(b, sk_0))).
step(('urn:example:r'(a, b), 'urn:example:r'(a, c)), ('urn:example:r'(b, sk_0), 'urn:example:r'(c, sk_0))).
step('urn:example:r'(b, sk_0), 'urn:example:re'(b, sk_0)).
step('urn:example:r'(c, sk_0), 'urn:example:re'(c, sk_0)).
step(('urn:example:r'(b, sk_0), 'urn:example:r'(b, sk_0)), ('urn:example:r'(sk_0, sk_0), 'urn:example:r'(sk_0, sk_0))).
step('urn:example:re'(b, sk_0), 'urn:example:not_re'(c, sk_0)).
step('urn:example:re'(c, sk_0), 'urn:example:not_re'(b, sk_0)).
step('urn:example:re'(b, sk_0), 'urn:example:e'(sk_0, sk_0)).
step(('urn:example:not_re'(c, sk_0), 'urn:example:re'(c, sk_0)), 'urn:example:not_e'(c, c)).
step(('urn:example:not_re'(b, sk_0), 'urn:example:re'(b, sk_0)), 'urn:example:not_e'(b, b)).
step(('urn:example:e'(b, b), 'urn:example:not_re'(b, sk_0)), 'urn:example:not_e'(b, sk_0)).
step(('urn:example:e'(c, c), 'urn:example:not_re'(c, sk_0)), 'urn:example:not_e'(c, sk_0)).
step('urn:example:e'(sk_0, sk_0), 'urn:example:re'(sk_0, sk_0)).
step(('urn:example:re'(b, b), 'urn:example:not_e'(b, b)), 'urn:example:r'(b, b)).
step(('urn:example:re'(c, c), 'urn:example:not_e'(c, c)), 'urn:example:r'(c, c)).
step('urn:example:not_e'(b, sk_0), 'urn:example:not_e'(sk_0, b)).
step('urn:example:not_e'(c, sk_0), 'urn:example:not_e'(sk_0, c)).
