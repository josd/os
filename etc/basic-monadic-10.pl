% Basic Monadic Benchmark
% See http://eulersharp.sourceforge.net/2014/11bmb/

:- op(1200, xfx, :+).

'urn:example:i18'('urn:example:i87', 'urn:example:i42').
'urn:example:i28'('urn:example:i10', 'urn:example:i81').
'urn:example:i36'('urn:example:i80', 'urn:example:i54').
'urn:example:i45'('urn:example:i90', 'urn:example:i57').
'urn:example:i53'('urn:example:i96', 'urn:example:i6').
'urn:example:i63'('urn:example:i40', 'urn:example:i60').
'urn:example:i72'('urn:example:i57', 'urn:example:i84').
'urn:example:i81'('urn:example:i53', 'urn:example:i24').
'urn:example:i90'('urn:example:i21', 'urn:example:i27').
'urn:example:i9'('urn:example:i96', 'urn:example:i3').

'urn:example:cycle'(A, [B, C, D, E, F, G, H, I, J, K, B]) :-
    current_predicate(A/2),
    atom_concat('urn:example:', _, A),
    A \= 'urn:example:cycle',
    call(A, B, C),
    call(A, C, D),
    call(A, D, E),
    call(A, E, F),
    call(A, F, G),
    call(A, G, H),
    call(A, H, I),
    call(A, I, J),
    call(A, J, K),
    call(A, K, B).

% query
true :+ 'urn:example:cycle'(_, _).
true :+ \+'urn:example:cycle'(_, _).
