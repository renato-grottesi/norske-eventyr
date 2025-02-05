=== function WeaponsName(i) ===
{
- i == QWood: 
  ~return "et tresverd"
- i == QRusty:
  ~return "et rustsverd"
- i == QSoldier:
  ~return "et soldatsverd"
- i == QMaster:
  ~return "mestersverden"
- else:
  ~return "ikke noe våpen"
}

=== function BowName(i) ===
{
- i == QWood: 
  ~return "en trebue"
- i == QRusty:
  ~return "en rustbue"
- i == QSoldier:
  ~return "en soldatbue"
- i == QMaster:
  ~return "mesterbuen"
- else:
  ~return "ingen bue"
}

=== function ShieldName(i) ===
{
- i == QWood: 
  ~return "et treskjold"
- i == QRusty:
  ~return "et rustskjold"
- i == QSoldier:
  ~return "et soldatskjold"
- i == QMaster:
  ~return "mesterskjoldet"
- else:
  ~return "du har ikke noe skjold"
}

=== function ClothsName(i) ===
{
- i == QWood: 
  ~return "en rustning av treplater"
- i == QRusty:
  ~return "en skinnrustning"
- i == QSoldier:
  ~return "en soldat rustning"
- i == QMaster:
  ~return "den gylne rustningen"
- else:
  ~return "ingen klær"
}

=== function WeaponPrice(i) ===
{
- i == QWood: 
  ~return 10
- i == QRusty:
  ~return 30
- i == QSoldier:
  ~return 50
- i == QMaster:
  ~return 500
- else:
  ~return 0
}

=== function UpdateItem(i) ===
{
- i == QNone:
  ~ return QWood
- i == QWood: 
  ~return QRusty
- i == QRusty:
  ~return QSoldier
- i == QSoldier:
  ~return QMaster
- else:
  ~return QNone
}

=== function CanUpdate(i) ===
{
- i == QNone:
  ~ return rupies >= WeaponPrice(QWood)
- i == QWood: 
  ~return rupies >= WeaponPrice(QRusty)
- i == QRusty:
  ~return rupies >= WeaponPrice(QSoldier)
- i == QSoldier:
  ~return rupies >= WeaponPrice(QMaster)
- else:
  ~return false
}

