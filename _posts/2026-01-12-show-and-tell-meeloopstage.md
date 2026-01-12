---
layout: post
title: "Show & Tell tijdens je meeloopstage"
subtitle: "Hoe presenteer je je stagewerk effectief?"
date: 2026-01-12
lang: nl
draft: true
tags: [onderwijs, stage, hbo-ict]
img: posts/show-tell-agenda-slide-voorbeeld.png
---

Tijdens de meeloopstage in jaar 2 van HAN ICT opleiding *Software Engineering* en (nu in ontwikkeling zijnde profiel) *Software & Robotics* heb je drie Show & Tell sessies.[^1] De derde en laatste is tevens je eindbeoordeling. Dit artikel legt uit hoe je deze sessies effectief aanpakt.

[^1]: De officiële naam is inmiddels gewijzigd naar "Showcase & Portfolio", om te benadrukken dat je tijdens je stage ook een portfolio opbouwt: een verzameling van je softwaredocumentatie, onderzoeken en overige documenten. In dit artikel blijf ik "Show & Tell" gebruiken - deze showcase-component blijft immers centraal staan.

*Waarom deze blog?* Ik ben soms wat "verbose" in mijn antwoorden naar studenten. Een uitgebreid antwoord per e-mail of chat kan net zo goed een blog worden - dan kunnen meerdere studenten het lezen, en hoef ik niet telkens hetzelfde verhaal te typen. Deze post is mede ontstaan naar aanleiding van vragen van stagiairs en ik zal hem in de toekomst mogelijk ook bijwerken. [Feedback](mailto:bart.vanderwal@han.nl) is ook welkom, bij onduidelijkheden!

**Leeswijzer:** Sectie 1-2 leggen de basis uit. Sectie 3 gaat specifiek over de eindpresentatie. Sectie 4 behandelt de HBO-i competenties waarop je leerdoelen baseert. Sectie 5-6 zijn praktische tips voor slides, demo's en notulen. Sectie 7 vat alles samen.

## 1. Wat is Show & Tell?

De naam 'Show & Tell' zegt het al: je **toont** iets en je **vertelt** erbij. Beide delen zijn essentieel.

### Show: laat concreet werk zien

Bij elk leerdoel toon je tastbaar bewijs:

- Een werkende demo van je applicatie
- Code die je geschreven hebt
- Een diagram dat je gemaakt hebt
- Een onderzoeksdocument

### Tell: vertel er actief bij

Je leest niet voor wat er op je slides staat. Je vertelt:

- Wat je gedaan hebt
- Welke keuzes je maakte
- Wat je ervan geleerd hebt

## 2. De valkuil: vertellen DAT in plaats van LATEN ZIEN WAT

Een veelgemaakte fout is om alleen te *vertellen* dat je iets goed gedaan hebt, zonder te *laten zien* wat je precies gemaakt hebt.

**Niet zo:**
> "Ik heb goed samengewerkt met het team en veel geleerd over React."

**Wel zo:**
> "Hier zie je de component die ik gebouwd heb. Ik heb gekozen voor deze state-structuur omdat... [toont code]. Het team reviewde mijn PR en suggereerde... [toont GitHub]."

Het oordeel of je het goed gedaan hebt, is aan mij als beoordelaar. Jouw taak is om mij het bewijs te laten zien zodat ik dat oordeel kan vellen. Je mag natuurlijk wel een aanzet zelf doen. "Daarmee toon ik aan dat ik de activiteit 'realiseren' goed invulling kan geven". Of je kan er mee begunnen: "In het kader van mijn leerdoel X over Realiseren toon ik nu de React front-end die ik heb gerealiseerd..."

## 3. Structuur van je eindpresentatie (Show & Tell 3)

Bij de eindpresentatie geef je een overzicht van je hele stage, niet alleen de laatste periode. Maar maak wel duidelijk wat je in de laatste periode nog gedaan of toegevoegd hebt.

### De assessor

Bij Show & Tell 3 kan een assessor aanschuiven: een tweede beoordelaar die op meer afstand staat. Deze assessor was niet bij Show & Tell 1 en 2 aanwezig en kent alleen je notulen. Dat betekent:

- Je kunt niet verwijzen naar "wat we vorige keer besproken hebben"
- Je presentatie moet op zichzelf staan
- Context die voor je stagebegeleider vanzelfsprekend is, moet je voor de assessor kort toelichten

Dit is ook waarom goede notulen belangrijk zijn: de assessor baseert zich mede daarop.

### Volgorde: niet per se leerdoel 1 t/m 6

Je hoeft je leerdoelen niet in numerieke volgorde te presenteren. Een slimmere aanpak: begin met waar je het laatst aan gewerkt hebt. Zo is het meest verse werk het meest uitgebreid, en werk je terug naar eerdere zaken.

In pseudo-SQL:

```sql
SELECT *
FROM StageDoelen
ORDER BY DatumLaatstAanGewerkt DESC
```

Of uitgebreider, als je per leerdoel ook de concrete features/issues wilt tonen:

```sql
SELECT
    SD.LeerdoelNr,
    SD.LeerdoelNaam,
    SD.Beschrijving,
    STRING_AGG(FI.Omschrijving, ', ') AS OpgepakteItems
FROM StageDoelen SD
LEFT JOIN FeaturesEnIssues FI ON FI.LeerdoelNr = SD.LeerdoelNr
WHERE FI.TijdBesteed > 'AANZIENLIJK'
GROUP BY SD.LeerdoelNr, SD.LeerdoelNaam, SD.Beschrijving
ORDER BY MAX(FI.DatumLaatstAanGewerkt) DESC
```

*Dit is natuurlijk geen echte query, want er is ook geen echte database met de leerdoelen en je werk - deze  "data" zit in je hoofd en documenten. De pseudo-code illustreert alleen de denkwijze, en maakt het wat preciezier voor jou als de techhneut die je bent, of aan het worden bent.*

### Alle leerdoelen op de agenda

Zet al je leerdoelen op je agenda/structuur slide, ook als je er niet aan gewerkt hebt in de laatste periode. Zo is duidelijk dat je het overzicht hebt.

## 4. Leerdoelen opstellen

Aan het begin van je stage stel je zelf leerdoelen op in je **projectplan**. Deze sluiten aan bij de HBO-i competenties, gestructureerd in de "kubus" (HBO-i, 2024).

### De vijf activiteiten

| Activiteit | Voorbeelden |
| --- | --- |
| Analyseren | Requirements ophalen, probleem onderzoeken |
| Adviseren | Aanbevelingen doen, alternatieven afwegen |
| Ontwerpen | Architectuur, database design, UI/UX |
| Realiseren | Code schrijven, implementeren, testen (TDD/BDD) |
| Manage & Control | Proactief handelen, persoonlijk leiderschap, planning |

**Let op voor Software Engineering:** Bij het profiel SE ligt de nadruk meer op *Realiseren* en minder op *Adviseren*. Testen (inclusief Test-Driven Development en Behaviour-Driven Development) valt onder Realiseren.

De laatste categorie (Manage & Control) sluit aan bij Professional Skills zoals je die kent van KOET en GEIN.

### De vijf architectuurlagen

Naast activiteiten kent de HBO-i kubus ook vijf architectuurlagen:

| Laag | Voorbeelden |
| --- | --- |
| Gebruikersinteractie | UI/UX, front-end, accessibility |
| Organisatieprocessen | Workflows, business logic |
| Infrastructuur | Servers, cloud, netwerk |
| Software | Back-end, API's, databases |
| Hardware interfacing | IoT, embedded systems, sensoren |

### De vier niveaus

De derde dimensie van de kubus zijn de vier beheersingsniveaus. Deze geven aan hoeveel eigen inbreng en overzicht je hebt:

| Niveau | Naam | Beschrijving |
| --- | --- | --- |
| 1 | Taakgericht | Werken aan afgebakende taken onder begeleiding |
| 2 | Probleemgericht | Zelfstandig problemen oplossen binnen kaders |
| 3 | Situatiegericht | Omgaan met complexe, veranderende situaties |
| 4 | Professiegericht | Bijdragen aan de beroepspraktijk (master niveau) |

**Voor de meeloopstage:** Focus op niveau 2 (probleemgericht) en niveau 3 (situatiegericht). Niveau 4 is master niveau of hoger, niveau 3 is het eindniveau van de HBO bachelor. Deze niveaus komen ook terug in het beoordelingsformulier voor je bedrijfsbegeleider.

![De HBO-i kubus met activiteiten, architectuurlagen en niveaus](/assets/images/posts/hbo-i-kubus.png)
*De HBO-i kubus: activiteiten × architectuurlagen × niveaus (HBO-i, 2024)*

### Van onbewust onbekwaam naar bewust bekwaam

De vier niveaus sluiten aan bij het model van "reflection in action" en "reflection on action" (Schön, 1983). Het idee: je groeit van *onbewust onbekwaam* (je weet niet wat je niet weet) via *bewust onbekwaam* en *bewust bekwaam* naar uiteindelijk *onbewust bekwaam* (je doet het goed zonder erbij na te denken). Maar voor een stage is het belangrijk om ook die laatste stap weer bewust te maken - zodat je kunt aantonen wat je geleerd hebt.

**Voorbeeld: Code kwaliteit bij SuperSharp**

Een student loopt stage bij fictief bedrijf "SuperSharp" en werkt aan bugfixes in een C# codebase.

1. **Niveau 1 - Taakgericht**: De student pakt bugs op uit het bestaande issue systeem. Hij fixt ze binnen de afgebakende omgeving van de bestaande codebase, en probeert aan te sluiten bij de overige code. Er is een kort lijstje met code conventies ergens, verder volgt het bedrijf de standaard Microsoft C# richtlijnen. Dit is taakgericht werken: een afgebakende taak uitvoeren onder begeleiding.

2. **Onbewust onbekwaam**: De student krijgt bij een code review door een collega/medewerker vaak de opmerking terug dat  accolades op dezelfde regel als de `if`-statement (Java-stijl). Hij weet niet dat het bedrijf de gangbare C# conventie volgt om accolades op een nieuwe regel moeten. Al had hij dit wel uit andere code kunnen halen, maar hij was al blij dat de bug gefixed leek. En "de plek van de accolade maakt toch niet uit?" (impliciete aanname, nee voor functionaliteit niet; maar leesbaarheid voor collega's is zo minder; "When in Rome; act like the Romans")

3. **Bewust onbekwaam**: Na feedback in een code review realiseert hij zich dat hij de coding standards niet goed kent. Hij neemt "Accolades goed plaatsen" op in zijn Definition of Done bij issues.

4. **Niveau 2 - Probleemgericht**: Hij neemt zelf initiatief en schrijft een "SuperSharp SuperCode Guide (SCG)" - een overzichtelijk document met alle coding conventions van het bedrijf. Hij breidt zijn DoD-checkpoint uit naar "SCG volgen". Dit is probleemgericht: hij ziet een probleem (onduidelijke standaarden) en lost het zelfstandig op binnen de kaders van het bedrijf.

5. **Probleem**: Hij merkt dat het checkpoint "SCG volgen" niet van toepassing is op sommige issues (bijvoorbeeld pure documentatie-taken). Hierdoor gaat hij er minder naar kijken.

6. **Niveau 3 - Situatiegericht**: Richting Show & Tell 2 ontdekt hij StyleCop, een C# linter. Hij configureert deze in het project zodat stijlfouten automatisch gedetecteerd worden. Hij past zijn aanpak aan de situatie aan: wat handmatig checken was, wordt nu geautomatiseerd. Hij haalt het handmatige checkpoint weer weg uit zijn issue template.

7. **Onbewust bekwaam**: Na een paar weken heeft hij de coding standards geïnternaliseerd. Met Prettier autoformat schrijft hij automatisch correcte code zonder erbij na te denken.

8. **Weer bewust maken**: In zijn eindverslag neemt hij een korte beschouwing op over code kwaliteit, voegt de StyleGuide toe als bijlage, en reflecteert op zijn leerproces. Zo toont hij aan wat hij geleerd heeft - ook al gaat het inmiddels "vanzelf".

Dit patroon - automatiseren wat kan, maar wel kunnen uitleggen waarom - is precies wat we bij een Show & Tell willen zien.

## 5. Slides en demo's voorbereiden

### Moet je slides maken?

Ja, maar niet te veel. Maak in ieder geval:

- **Een titelslide** met je naam, studentnummer, bedrijfsnaam/logo, en opdrachtnaam. Je begeleider heeft typisch 4 tot 8 andere studenten - een korte reminder van wie je bent en waar je werkt is nuttig.
- **Een agendaslide** met je leerdoelen in de volgorde waarin je ze gaat presenteren. Dit is meteen je overzicht. Zet bij elk leerdoel een status: *done*, *grotendeels done*, *volgende periode*, of *toch niet realistisch (want...)*. De `LEFT JOIN` in de pseudo-SQL eerder illustreert dit: je toont AL je leerdoelen, ook degene waar je niet aan gewerkt hebt.

![Voorbeeld van een agendaslide met leerdoelen en status](/assets/images/posts/show-tell-agenda-slide-voorbeeld.png)
*Voorbeeld agendaslide: leerdoelen in presentatievolgorde (niet projectplan-volgorde), elk met status. Let op: dit AI-gegenereerde voorbeeld bevat spelfouten ("beck-end") en mist de vereiste 2-3 Professional Skills leerdoelen binnen de zes te stellen leerdoelen.*

### Wat als je niet aan een leerdoel hebt kunnen werken?

Het kan gebeuren dat je ergens tegenaan loopt waardoor je niet aan een leerdoel hebt kunnen werken. Misschien was er een blokkade (wachten op toegang, afhankelijkheid van anderen), of bleek het leerdoel niet realistisch gegeven de opdracht.

**Verzwijg dit niet.** Noem het kort in je presentatie:

- Wat was de blokkade?
- Heb je zelf een oplossingsrichting bedacht?
- Wat heb je nodig van je stagebegeleider?

Dit is precies het verschil tussen niveau 1 (taakgericht) en niveau 2 (probleemgericht): je signaleert niet alleen "ik kon dit niet doen", maar denkt mee over hoe het wél kan. Je stagebegeleider moet op de hoogte zijn, en samen kun je kijken of het leerdoel aangepast moet worden of dat er een andere aanpak nodig is.

Of je daarnaast ook code voorbeelden, screenshots of stukjes documentatie in slides wilt zetten is aan jou. Het is relatief veel werk, en direct laten zien in context (in de IDE, in een Word document) werkt vaak beter.

### Demo's: localhost vs. screenshots

Mijn voorkeur: een **live demo op localhost** of - nog beter - op een echte test- of productieomgeving als die er is. Dat is overtuigender dan screenshots.

Maar bereid een **fallback** voor. Het "demo effect" (Murphy's Law) slaat vaak toe:

- WiFi op de HAN werkt opeens anders
- Geen toegang tot private NPM packages of database in bedrijfsnetwerk
- De testserver is net down

Maak daarom vooraf:

- **Screenshots** als absolute fallback
- Of liever nog: een **screencast** (korte video-opname van je demo). Zo kun je altijd iets laten zien, ook als de live demo faalt.

### Scherm delen

Denk bij het delen van je scherm aan:

- **Maak je scherm groot genoeg**. Code in een klein venster is onleesbaar voor kijkers.
- **Gebruik "Duplicate" in plaats van "Extend"** bij een extern scherm. Zo zie je zelf hetzelfde als je publiek.
- **Ruim op vooraf**: sluit storende applicaties, privézaken, messenger/chat apps, en overweeg een neutrale achtergrond.

De laatste Show & Tell is vaak fysiek op locatie in Arnhem - denk dan ook aan hoe je presenteert met een beamer.

## 6. Notulen bijhouden

Na elke Show & Tell houd je zelf notulen bij. Noteer:

- Welke feedback je kreeg bij elk van de (besproken) leerdoelen/getoonde uitwerkingen
- Welke actiepunten je meeneemt
- Hoe je deze oppakt voor de volgende sessie

## 7. Samenvatting

1. **Show**: Laat concreet werk zien (applicatie demo, code, app config, documenten, test code, UML, C4 f andere diagrammen)
2. **Tell**: Vertel er actief bij, lees niet voor
3. **Laat het oordeel aan de beoordelaar**: Toon bewijs, claim niet alleen succes, of beargumenteer het tenminste en leg focusop op aantonen, je mag overtuigen, maar je moet NIET overhalen
4. **Eindpresentatie**: Overzicht van hele stage, recent werk eerst
5. **Leerdoelen**: Gebaseerd op HBO-i kubus, zelf opgesteld

## Bronnen

- HBO-i. (2024). *HBO-i domeinbeschrijving 2024*. Geraadpleegd van https://www.hbo-i.nl/wp-content/uploads/2024/02/24040_HBOi_Domeinbeschrijving_NL.pdf
- Microsoft. (2024). *STRING_AGG (Transact-SQL)*. Geraadpleegd van https://learn.microsoft.com/en-us/sql/t-sql/functions/string-agg-transact-sql

---

*Vragen over je Show & Tell? Neem contact op met je stagebegeleider.*

## Disclaimer

Dit artikel geeft mijn persoonlijke visie weer als docent, niet noodzakelijk die van de HAN of het AIM. Ik probeer een oprecht inkijkje te geven in hoe ik stagebegeleiding aanpak, aansluitend bij de open source-cultuur die bij moderne ICT hoort. Uiteraard deel ik geen vertrouwelijke informatie over studenten of bedrijven. Fouten voorbehouden.
