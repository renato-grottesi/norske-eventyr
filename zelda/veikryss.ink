=== veikryss

= landing
Du er i veikrysset.
-> kryss

= mann
{mann==1: Det står en gammel mann på veikrysset.}
* 🟢"Hvem er du?" 
  -> gammel_mann.hvem
* 🟢"Hvem er jeg?" 
  -> gammel_mann.du
* 🟢"Hva skal jeg gjøre?" 
  -> gammel_mann.gjore
+ {mann==4} 🟢"Ha det!"
  -> hadet
= hadet
  🔵"Lykke til, unge mann".
  🔵"Faktisk, vent!"
  🔵"Det er farlig å gå alene."
  🔵"Ta dette sverdet."
  Du fikk et tresverd.
  ~weapon = QWood
-> kryss

= kryss
Det er tre veier.
+ [Gå til grasmarken.] -> grasmark.landing
+ [Gå til skogen.] -> skog.landing
+ [Gå til festningen.] -> festning.landing

=== gammel_mann
= hvem
🔵"Jeg er Renato en gammel klok mann."
-> veikryss.mann

= du
🔵"Du er Oliver."
🔵"Du er helten til Hyrule."
🔵"Du mistet hukommelsen."
-> veikryss.mann

= gjore
🔵"Du må drepe Ganon."
🔵"Han er veldig ond"
-> veikryss.mann



