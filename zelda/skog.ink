LIST TargetsSkog = TSBEGIN, TSSOPP, TSVILLSVIN, TSHJORT, TSEPLE, TSEND

=== skog

= landing
Du vandrer i skogen.
~ target = TargetsSkog(RANDOM(LIST_VALUE(TSBEGIN)+1,LIST_VALUE(TSEND)-1))
+ {target == TSSOPP} -> ny_sopp
+ {target == TSVILLSVIN} -> ny_villsvinn
+ {target == TSHJORT} -> ny_hjort
+ {target == TSEPLE} -> ny_eple

= ny_sopp
🍄Du fant en sopp.

{ RANDOM(1,10) > 8 : 
Å nei! Soppen er giftig.
 - else:
Du har funnet en smakfull {&steinsopp|sjampinjong|traktkantarell|kantarell|piggsopp|skubb}.
~sopp++
}
-> kryss

= ny_villsvinn
🐗Du møter en villsvin
{ bow > QNone :
<> og du skyter med {BowName(bow)}.
{ RANDOM(1,5) < LIST_VALUE(bow) : 
Du treffer villsvinet.
~kjott++
-else:
Du bommer på målet.
}
 - else:
<> men du har ingen bue.
}
-> kryss

= ny_hjort
🦌Du møter en hjort
{ bow > QNone :
<> og du skyter med {BowName(bow)}.
{ RANDOM(1,4) < LIST_VALUE(bow) : 
Du treffer hjorten.
~kjott++
-else:
Du bommer på målet.
}
 - else:
<> men du har ingen bue.
}
-> kryss

= ny_eple
🍎Du fant et eple.
~epler++
-> kryss

= kryss
Det finnes tre stier.
+ [Skjekk mer i skogen.] -> landing
+ [Gå til byen.] -> by.landing
+ [Gå til veikrysset.] -> veikryss.landing