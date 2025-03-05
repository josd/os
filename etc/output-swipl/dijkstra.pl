:- op(1200, xfx, :+).

bus((edge([b, a], 4):+edge([a, b], 4))).
bus((edge([c, a], 2):+edge([a, c], 2))).
bus((edge([c, b], 1):+edge([b, c], 1))).
bus((edge([d, b], 5):+edge([b, d], 5))).
bus((edge([d, c], 8):+edge([c, d], 8))).
bus((edge([e, c], 10):+edge([c, e], 10))).
bus((edge([e, d], 2):+edge([d, e], 2))).
bus((edge([f, d], 6):+edge([d, f], 6))).
bus((edge([f, e], 3):+edge([e, f], 3))).
bus((true:+'urn:example:dijkstra'([a, f], [[a, c, b, d, e, f], 13]))).
bus((true:+'urn:example:dijkstra'([a, f], [[a, c, b, d, f], 14]))).
bus((true:+'urn:example:dijkstra'([a, f], [[a, b, d, e, f], 14]))).
bus((true:+'urn:example:dijkstra'([a, f], [[a, b, d, f], 15]))).
bus((true:+'urn:example:dijkstra'([a, f], [[a, c, e, f], 15]))).
bus((true:+'urn:example:dijkstra'([a, f], [[a, c, d, e, f], 15]))).
bus((true:+'urn:example:dijkstra'([a, f], [[a, c, d, f], 16]))).
