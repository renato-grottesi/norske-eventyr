LIST TargetsGrasmark = TGBEGIN, TGOKSE, TGSTRUTS, TGEPLE, TGEND

=== grasmark

= landing
Du rusler i grasmarken.
~ target = TargetsGrasmark(RANDOM(LIST_VALUE(TGBEGIN)+1,LIST_VALUE(TGEND)-1))
+ {target == TGOKSE} -> ny_okse
+ {target == TGSTRUTS} -> ny_struts
+ {target == TGEPLE} -> ny_eple
-> kryss

= ny_okse
🐂Du møter en okse
{ bow > QNone :
<> og du skyter med {BowName(bow)}.
{ RANDOM(1,3) < LIST_VALUE(bow) : 
Du treffer oksen.
~kjott++
-else:
Du bommer på målet.
}
 - else:
<> men du har ingen bue.
}
-> kryss

= ny_struts
🦤Du møter en struts
{ bow > QNone :
<> og du skyter med {BowName(bow)}.
{ RANDOM(1,3) < LIST_VALUE(bow) : 
Du treffer strutsen.
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
Det er tre veier.
+ [Rusle mer i grassmarken.] -> landing
+ [Gå til byen.] -> by.landing
+ [Gå til veikrysset.] -> veikryss.landing
+ [Gå til festningen.] -> festning.landing
