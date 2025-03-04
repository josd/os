:- op(1200, xfx, :+).

bus((edge("ba",4):+edge("ab",4))).
bus((edge("ca",2):+edge("ac",2))).
bus((edge("cb",1):+edge("bc",1))).
bus((edge("db",5):+edge("bd",5))).
bus((edge("dc",8):+edge("cd",8))).
bus((edge("ec",10):+edge("ce",10))).
bus((edge("ed",2):+edge("de",2))).
bus((edge("fd",6):+edge("df",6))).
bus((edge("fe",3):+edge("ef",3))).
bus((true:+'urn:example:dijkstra'("af",["acbdef",13]))).
bus((true:+'urn:example:dijkstra'("af",["acbdf",14]))).
bus((true:+'urn:example:dijkstra'("af",["abdef",14]))).
bus((true:+'urn:example:dijkstra'("af",["abdf",15]))).
bus((true:+'urn:example:dijkstra'("af",["acef",15]))).
bus((true:+'urn:example:dijkstra'("af",["acdef",15]))).
bus((true:+'urn:example:dijkstra'("af",["acdf",16]))).
