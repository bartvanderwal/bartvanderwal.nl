---
layout: post
title: "'Clean Code, Horrible Performance'? Context, didactiek en generalisatie"
date: 2026-01-05
lang: nl
tags: [clean-code, polymorfisme, performance, onderwijs]
---

## Inleiding

In zijn video *“‘Clean’ Code, Horrible Performance”* stelt Casey Muratori dat een objectgeoriënteerde
oplossing, zoals gepresenteerd door de auteurs van *Clean Code*, kan leiden tot een prestatienadeel
van een factor tien of meer.

De video is technisch interessant en voor gevorderde ontwikkelaars zeker relevant.
Zonder context kan de boodschap echter gemakkelijk worden opgevat als:
*“Clean Code leidt per definitie tot slechte performance.”*

In deze blog analyseer ik dat standpunt, plaats ik het in context, en bespreek ik waarom
dit vooral voor studenten nuancering vereist.

---

## Het voorbeeld uit *Clean Code*

Muratori baseert zijn betoog op het bekende `calculateArea`-voorbeeld uit *Clean Code*.
Robert C. Martin introduceert dit voorbeeld om polymorfisme en het Open/Closed Principle
didactisch te illustreren.

Martin kiest dit voorbeeld omdat:

- het domein eenvoudig is,
- de focus ligt op ontwerpstructuur,
- en de verschillen tussen `switch` en polymorfisme duidelijk zichtbaar zijn.

Het voorbeeld is nadrukkelijk **didactisch bedoeld**, niet als representatief voor
realistische applicatiecode.

---

## Wat Muratori met dit voorbeeld doet

In de video lijkt Muratori zich expliciet te distantiëren van de voorbeeldkeuze:
hij stelt dat hij “slechts” een voorbeeld gebruikt van *de Clean Code-auteurs zelf*.
Daarbij noemt hij echter geen specifieke bron.

Gezien de inhoud ligt het voor de hand dat hij verwijst naar *Clean Code* van Robert C. Martin.

Belangrijker is dat Muratori het voorbeeld **inhoudelijk aanpast**:
hij plaatst de berekening in een zeer strakke `for`-lus en voert deze miljoenen keren uit.
Daarmee verandert hij het voorbeeld van een ontwerpoefening in een microbenchmark.

Door deze contextverschuiving verandert ook de aard van het probleem:
niet langer staat ontwerpbaarheid centraal, maar maximale rekensnelheid.

---

## Wat *Clean Code* zelf zegt over performance

In de tweede editie van *Clean Code* bespreekt Martin performance expliciet.
Hij erkent dat objectgeoriënteerde ontwerpen een meetbare overhead kunnen introduceren
in zeer specifieke situaties:

> “If you are working on a project where a few nanoseconds here or there are critical, then it may be that you will have to abandon the OCP and the DIP and use switch statements instead of polymorphism.”

*Martin, R. C. (2025). Clean Code (2nd ed.), Chapter 12: Objects and Data Structures – What About Performance, p. 181.*

Martin verbindt hier twee belangrijke voorwaarden:

1. het gaat om situaties waarin **enkele nanoseconden daadwerkelijk relevant zijn**;
2. het afwijken van ontwerpprincipes gebeurt **lokaal**, niet systeemwijd.

De video van Muratori laat deze nuancering grotendeels onbesproken.

---

## “Prefer polymorphism” is geen absolute regel

In diverse samenvattingen van *Clean Code* verschijnt de richtlijn:

> “Prefer polymorphism to if/else or switch/case.”

(Bijv. Wojtek’s samenvatting van *Clean Code*.)

Deze formulering beschrijft een **voorkeur**, geen wet.
Dat onderscheid is essentieel.

Martin maakt elders in zijn boek expliciet duidelijk dat `switch`-constructies
niet altijd te vermijden zijn, bijvoorbeeld in factories of concrete modules.
Alleen al dit gegeven maakt duidelijk dat hij geen absolute regel bedoelt,
laat staan “always use polymorphism”.

De video suggereert die absolute interpretatie wel, zonder dit expliciet te onderbouwen.

---

## DRY: terecht genoemd, maar onvolledig behandeld

Muratori noemt het DRY-principe expliciet als waardevol ontwerpprincipe.
Daarin heeft hij gelijk: onnodige duplicatie maakt code moeilijk onderhoudbaar.

Tegelijkertijd nuanceert Martin dit principe zelf uitgebreid:

> “You can tell an accidental duplication from an essential duplication by considering the Single Responsibility Principle (SRP).
> If two similar stretches of code are in two modules that are responsible to different actors, then they are likely to evolve separately as those actors ask for different changes.
> If you extract them into a common function, then you are likely to break the system for one actor while you try to satisfy the other.
>
> On the other hand, if two similar stretches of code are in modules responsible to the same actor, then they are likely to evolve together.”

*Martin, R. C. (2025). Clean Code (2nd ed.), Chapter 8: Accidental versus Essential Duplication.*

Deze nuance ontbreekt in de video, waardoor DRY als een absolute regel kan overkomen.

---

## Een belangrijk tegenvoorbeeld: code met I/O

Het `calculateArea`-voorbeeld bestaat uitsluitend uit rekenwerk.
Veel echte applicaties doen echter vooral:

- database-oproepen,
- netwerkverkeer,
- REST-calls.

Wanneer één zo’n stap tientallen milliseconden duurt, verdwijnt elk verschil tussen
polymorfisme en een `switch` volledig in de ruis.
In zulke situaties zijn leesbaarheid, testbaarheid en onderhoudbaarheid doorslaggevend.

Het voorbeeld uit de video representeert deze realiteit niet.

---

## Argumentatieve problemen in de video

Samenvattend bevat de video enkele problematische stappen:

- een didactisch ontwerpvoorbeeld wordt gebruikt als representatieve workload;
- de contextverschuiving naar een extreem herhaalde berekening blijft impliciet;
- een ontwerpheuristiek wordt gepresenteerd alsof het een absolute regel betreft.

Deze stappen maken de conclusie begrijpelijk voor experts,
maar potentieel misleidend voor studenten.

---

## Wat studenten hiervan moeten leren

Voor studenten is de belangrijkste les niet dat polymorfisme “traag” is,
maar dat ontwerpprincipes altijd **contextafhankelijk** zijn.

Zij moeten eerst leren:

- waarom principes zoals polymorfisme, SRP en DRY bestaan,
- welke problemen ze oplossen,
- en pas daarna wanneer het zinvol is daarvan af te wijken.

Zoals het vaak geciteerde gezegde luidt:

> “If the only tool you have is a hammer, it is tempting to treat everything as if it were a nail.”

---

## Conclusie

Muratori toont overtuigend aan dat polymorfisme ongeschikt kan zijn in extreem
performancekritische situaties.
*Clean Code* ontkent dit niet — integendeel.

Het probleem ontstaat wanneer deze specifieke observatie wordt veralgemeniseerd
tot een algemene uitspraak over “clean code”.
Juist voor studenten is het essentieel om dat onderscheid scherp te houden.
