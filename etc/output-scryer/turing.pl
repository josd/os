:- op(1200, xfx, :+).

bus((true:+'urn:example:compute'([1,0,1,0,0,1],[1,0,1,0,1,0|"#"]))).
bus((true:+'urn:example:compute'([1,0,1,1,1,1],[1,1,0,0,0,0|"#"]))).
bus((true:+'urn:example:compute'([1,1,1,1,1,1],[1,0,0,0,0,0,0|"#"]))).
bus((true:+'urn:example:compute'([],[1|"#"]))).
