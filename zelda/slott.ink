=== slott

= landing
Du er i slottet. 🏰
Det er noe veldig ondt her!
+ [Utforske!] -> ganon
+ [Gå tilbake.] -> festning.landing

= ganon
Du måte Ganon
🔴 Jeg er Ganon og jeg vil drepe deg, Oliver!
Lynel angriper deg.
+ [Forsvar deg selv.] -> defense_1
+ [Gå tilbake.] -> arena.landing

= defense_1
~survive_defense = false
Ganon spytter flammer mot deg
{ shield > QNone :
<> og du beskytter deg med {ClothsName(armour)}.
  { RANDOM(1,5) < LIST_VALUE(armour) : 
    Du overleve.
    ~survive_defense = true
  -else:
     Rustningen din er ikke sterk nok.
  }
-else:
<> men du har ingen rustning.
}

+ {survive_defense} [Angrip!] -> attack_1
+ {survive_defense} [Gå tilbake.] -> veikryss.landing
+ -> grotte.landing

= attack_1
~successful_attack = false
Du angriper Ganon med {WeaponsName(weapon)}.
{ RANDOM(1,5) < LIST_VALUE(weapon) : 
  Ganon er skadet.
  ~successful_attack = true
-else:
  Ganon unngår angrepet.
}

+ {successful_attack} [Fullfør ganon.] -> defense_2
+ {!successful_attack} [Igjen!] -> defense_1
+ [Gå tilbake.] -> arena.landing

= defense_2
~survive_defense = false
Ganon flyr, skyter en laser mot deg
{ shield > QNone :
<> og du beskytter deg med {ShieldName(shield)}.
  { RANDOM(1,5) < LIST_VALUE(shield) : 
    Du overleve.
    ~survive_defense = true
  -else:
     Du mislykkes.
  }
-else:
<> men du har ikke noe skjold.
}

+ {survive_defense} [Angrip!] -> attack_2
+ {survive_defense} [Gå tilbake.] -> veikryss.landing
+ -> grotte.landing

= attack_2
~successful_attack = false
Du skyter Ganon med {BowName(bow)}.
{ RANDOM(1,5) < LIST_VALUE(bow) : 
  Du treffer Ganon og han dør.
  ~successful_attack = true
-else:
  Ganon overlever.
}

+ {successful_attack} [Møt prinsessen Zelda.] -> zelda
+ {!successful_attack} [Igjen!] -> defense_2
+ [Gå tilbake.] -> arena.landing

= zelda
Du vant og Hyrule are fri!
Prinsesse Zelda kommer til deg.
💛 Takk Oliver!
Du er helten min!
Du er mye bedre enn Link!

-> END

