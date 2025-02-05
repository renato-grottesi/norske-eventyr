=== arena

= landing
Du er i arenaen.
Det er en Lynel her!
+ [Utforske!] -> lynel
+ [Gå tilbake.] -> festning.landing

= lynel
Du måte en Lynel. 👺
Lynel angriper deg.
+ [Forsvar deg selv.] -> defense
+ [Gå tilbake.] -> festning.landing

= defense
~survive_defense = false
Lynel skyter en pil mot deg 
{ shield > QNone :
<> og du beskytter deg med {ShieldName(shield)}.
  { RANDOM(1,4) < LIST_VALUE(shield) : 
    Du overleve.
    ~survive_defense = true
  -else:
     Du mislykkes.
  }
-else:
<> men du har ikke noe skjold.
}

+ {survive_defense} [Angrip!] -> attack
+ {survive_defense} [Gå tilbake.] -> veikryss.landing
+ -> grotte.landing

= attack
~successful_attack = false
Du angriper Lynel med {WeaponsName(weapon)}.
{ RANDOM(1,4) < LIST_VALUE(weapon) : 
  Lynel er død.
  ~successful_attack = true
-else:
  Lynel overlever.
}

{ successful_attack && (weapon<QMaster):
~weapon=QMaster
Du fant en {WeaponsName(QMaster)}.
}

{ successful_attack && (shield<QMaster):
~shield=QMaster
Du fant en {ShieldName(QMaster)}.
}

{ successful_attack && (armour<QMaster):
~armour=QMaster
Du fant en {ClothsName(QMaster)}.
}

{ successful_attack && (bow<QMaster):
~bow=QMaster
Du fant en {BowName(QMaster)}.
}

+ {successful_attack} [Gå videre til slottet.] -> slott.landing
+ {!successful_attack} [Igjen!] -> defense
+ [Gå tilbake.] -> festning.landing
