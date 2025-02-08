=== festning

= landing
Du er i festningen.
Det er mange monstre her.
+ [Utforske!] -> griser
+ [Gå tilbake.] -> veikryss.landing

= griser
Du måte en gris. 🐷
Grisen angriper deg.
+ [Forsvar deg selv.] -> defense
+ [Gå tilbake.] -> veikryss.landing

= defense
~survive_defense = false
Grisen svinger køllen mot deg 
{ shield > QNone :
<> og du beskytter deg med {ShieldName(shield)}.
  { RANDOM(1,3) < LIST_VALUE(shield) : 
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
Du angriper grisen med {WeaponsName(weapon)}.
{ RANDOM(1,3) < LIST_VALUE(weapon) : 
  Grisen er død.
  ~successful_attack = true
-else:
  Grisen overlever.
}

{ successful_attack && (weapon<QSoldier):
~weapon=QSoldier
Du fant {WeaponsName(QSoldier)}.
}

{ successful_attack && (shield<QSoldier):
~shield=QSoldier
Du fant {ShieldName(QSoldier)}.
}

{ successful_attack && (armour<QSoldier):
~armour=QSoldier
Du fant {ClothsName(QSoldier)}.
}

+ {successful_attack} [Gå videre til arenaen.] -> arena.landing
+ {!successful_attack} [Igjen!] -> defense
+ [Gå tilbake.] -> veikryss.landing

