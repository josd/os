:- op(1200, xfx, :+).

bus((true:+'urn:example:prepare'(9,10))).
bus(('urn:example:complies'('urn:example:bob9',true):+'urn:example:does'('urn:example:bob9','urn:example:work_related_task'),'urn:example:does'('urn:example:bob9','urn:example:log_off_at_end_of_shift'))).
bus(('urn:example:complies'('urn:example:bob10',true):+'urn:example:does'('urn:example:bob10','urn:example:work_related_task'),'urn:example:does'('urn:example:bob10','urn:example:log_off_at_end_of_shift'))).
bus(('urn:example:complies'('urn:example:alice9',true):+'urn:example:does'('urn:example:alice9','urn:example:log_off_at_end_of_shift'))).
bus(('urn:example:complies'('urn:example:alice10',true):+'urn:example:does'('urn:example:alice10','urn:example:log_off_at_end_of_shift'))).
bus(('urn:example:complies'('urn:example:carol9',false):+'urn:example:does'('urn:example:carol9','urn:example:access_social_media'))).
bus(('urn:example:complies'('urn:example:carol10',false):+'urn:example:does'('urn:example:carol10','urn:example:access_social_media'))).
bus((true:+'urn:example:complies'('urn:example:bob9',true))).
bus((true:+'urn:example:complies'('urn:example:bob10',true))).
bus((true:+'urn:example:complies'('urn:example:alice9',true))).
bus((true:+'urn:example:complies'('urn:example:alice10',true))).
bus((true:+'urn:example:complies'('urn:example:carol9',false))).
bus((true:+'urn:example:complies'('urn:example:carol10',false))).
