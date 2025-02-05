=== by

= landing
Du er i Hyrule byen.
+ [Skjekk matbutikken.] -> matbutikk
+ [Skjekk våpenhuset.] -> vapenhus
+ [Skjekk klesbutikken.] -> klesbutikk
+ [Forlat byen.] -> kryss
-> kryss

= matbutikk
🟣Velkomme i matbutikken!
🟣Hva kan jeg gjøre for deg?
+ {epler+sopp+kjott} [Selge mat.] -> selge_mat
+ {rupies>1} [Kjøpe mat.] -> kjope_mat
+ [Forlat] -> landing

= selge_mat
🟣Du har {rupies} rupies.
🟣Hva skal du selge?
+ {epler} [Epler 1/{epler}] 
~epler-- 
~rupies+=3
->selge_mat
+ {sopp} [Sopp 1/{sopp}]
~sopp-- 
~rupies+=5
->selge_mat
+ {kjott} [Kjøtt 1/{kjott}]
~kjott-- 
~rupies+=7
->selge_mat
+ [Forlat] -> matbutikk

= kjope_mat
🟣Du har {rupies} rupies.
🟣Hva skal du kjøpe?
+ {rupies>1} [Kjøpe ett eple for 2 rupies. Du har {epler} epler.]
~epler++ 
~rupies-=5
->kjope_mat
+ {rupies>1} [Kjøpe en sopp for 2 rupies. Du har {sopp} sopper.]
~sopp++
~rupies-=7
->kjope_mat
+ {rupies>3} [Kjøpe en kjøtt for 4 rupies. Du har {kjott} jøtt.]
~kjott++
~rupies-=11
->kjope_mat
+ {rupies>1} [Forlat] -> matbutikk
+ -> 
Du har ikke nok rupies. 
-> matbutikk

= vapenhus
🟣Velkommen unge kriger!
{rupies>1 and (CanUpdate(weapon) or CanUpdate(bow) or CanUpdate(shield) ): 🟣Vil du oppgradere våpnene dine? }
🟣Du har {WeaponsName(weapon)}, 
<> {BowName(bow)}, 
<> {ShieldName(shield)} og
<> {rupies} rupies.
+ {CanUpdate(weapon)} [Oppgradere våpnenet til {WeaponsName(UpdateItem(weapon))} for {WeaponPrice(UpdateItem(weapon))}]
~weapon=UpdateItem(weapon)
~rupies-=WeaponPrice(weapon)
-> vapenhus
+ {CanUpdate(bow)} [Oppgradere buen til {BowName(UpdateItem(bow))} for {WeaponPrice(UpdateItem(bow))}]
~bow=UpdateItem(bow)
~rupies-=WeaponPrice(bow)
-> vapenhus
+ {CanUpdate(shield)} [Oppgradere skjoldet til {ShieldName(UpdateItem(shield))} for {WeaponPrice(UpdateItem(shield))}]
~shield=UpdateItem(shield)
~rupies-=WeaponPrice(shield)
-> vapenhus
+ [Forlat] -> landing

= klesbutikk
🟣Du er litt ute av moten.
🟣Du har {ClothsName(armour)}, og {rupies} rupies.
{CanUpdate(armour): 🟣Trenger du bedre klær? }
+ {CanUpdate(armour)} [Oppgradere klærne dine til {ClothsName(UpdateItem(armour))} for {WeaponPrice(UpdateItem(armour))}]
~armour=UpdateItem(armour)
~rupies-=WeaponPrice(armour)
-> klesbutikk
+ [Forlat] -> landing

= kryss
Det er to veier.
+ [Gå til grasmarken.] -> grasmark.landing
+ [Gå til skogen.] -> skog.landing
