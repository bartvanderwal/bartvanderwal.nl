---
layout: post
title: "Vier types van AI-gebruik"
subtitle: "Een categorisering gebaseerd op ideeën en regie"
date: 2026-01-10
date_started: 2026-01-10
lang: nl
tags: [ai, llm, werkwijze, meta]
draft: true
---

In deze blog introduceer ik een categorisering van AI-gebruik. Waarom? Omdat de uitspraak "Ik heb AI gebruikt" bij de ene persoon alarmbellen doet rinkelen ("dat mag niet!") terwijl een ander zegt "heel goed!". De reactie hangt af van wat de luisteraar zich voorstelt bij "AI gebruiken" — en dat verschilt enorm.

In plaats van dat de reactie afhangt van de impliciete aannames van de luisteraar, zou het direct moeten afhangen van het *type* gebruik. En daar wringt meteen de schoen: het woord "type" gebruiken we voor zoveel zaken. We hebben "types of AI" (functionele classificaties), "thinking types" (Kahneman), en nu ook "types of AI use". Dit maakt het woord zelf problematisch.

Desondanks: ik onderscheid vier types van AI-gebruik, gebaseerd op waar het idee vandaan komt en wie de regie houdt. In secties 1-4 beschrijf ik elk type. Sectie 5 behandelt hoe de types in de praktijk door elkaar lopen. Sectie 6 introduceert het *prompt/answer length asymmetry* principe. Sectie 7 legt uit waarom dit onderscheid ertoe doet. In sectie 8 kom ik terug op betere naamgeving, met subsecties over eindregie en constraints. Sectie 9 past de theorie toe op deze blog zelf. Tot slot plaatst sectie 10 dit in bredere context.

## 1. Type 1: Mens bedenkt, AI genereert

De mens heeft het idee en formuleert dit in een gedetailleerde eerste prompt — een soort specificatie van een probleem of eigen idee. De AI genereert op basis daarvan. De cyclus gaat verder met menselijke input en sturing.

Dit is hoe ik deze blog schrijf. Ik heb een onderwerp, een standpunt, specifieke voorbeelden die ik wil gebruiken. De AI helpt formuleren, structureren, bronnen checken. Maar de richting komt van mij.

Het principe: één prompt is geen prompt. Je itereert, stuurt bij, verwerpt suggesties, vraagt om alternatieven. De AI is een tool, geen auteur.

Je zou kunnen stellen dat een vraag om ideeën (Type 2) zelf ook een idee is. Maar het verschil zit in de mate van detail. Bij Type 1 bevat de eerste prompt al veel context en richting.

## 2. Type 2: AI genereert ideeën, mens selecteert en stuurt

De mens vraagt de AI om ideeën te genereren — een korte, open vraag. De mens maakt vervolgens een serieuze keuze welke richting te volgen. Verdere stappen kunnen weer met AI, maar met bewuste menselijke input.

Voorbeeld: "Geef me vijf mogelijke invalshoeken voor een blog over remote werken." De mens kiest er één, en werkt die uit — mogelijk weer met AI-hulp, maar met eigen toevoegingen en richtinggevoel.

Het verschil met Type 1: de eerste prompt is kort en open, niet gedetailleerd en richtinggevend. Het verschil met Type 3: de mens doet meer dan alleen "ja" zeggen.

## 3. Type 3: AI genereert en werkt uit, mens accepteert

De mens vraagt AI om ideeën én om deze zelf uit te werken. Zonder serieuze tussenkomst: de voorgestelde voorkeurskeuze accepteren, of voorgelegde opties weer aan de AI voorleggen ("wat zou jij doen?").

Dit is de valkuil van "vibe coding" zonder ervaring: de AI genereert, de mens klikt op "accept", en niemand weet meer precies wat er in de code staat of waarom.

Het resultaat kan technisch werken, maar de mens heeft geen grip op wat er is gemaakt of hoe het te onderhouden.

## 4. Type 4: Mens bedenkt alles zelf

Strikt genomen geen AI-gebruik. Maar er is een interessant randgeval: het *AI rubber duck effect*.

De naam refereert aan rubber duck debugging: je legt je probleem uit aan een badeend (of collega), en tijdens het uitleggen bedenk je zelf de oplossing.

Met AI werkt dit ook. Je begint een vraag te typen, en tijdens het formuleren realiseer je je het antwoord al. Of je leest het AI-antwoord, beseft dat het nergens op slaat, en gaat je eigen weg — maar de denkact van het vragen heeft je geholpen.

## 5. De types door elkaar

In de praktijk gebruik je deze types door elkaar. Een sessie kan beginnen als Type 1, tijdelijk naar Type 2 gaan voor brainstormen, en eindigen in Type 4 wanneer je besluit het toch anders te doen.

Het punt is niet om strikt in één type te blijven. Het punt is om *bewust* te zijn van welk type je gebruikt en of dat past bij wat je wilt bereiken.

## 6. Prompt/Answer Length Asymmetry

Een interessant patroon dat hieruit volgt: de lengte van je prompt en de lengte van het antwoord zijn vaak omgekeerd evenredig.

Een korte, open prompt ("Schrijf iets over AI") geeft de LLM weinig constraints. Het antwoord wordt lang en breed — de AI vult de ruimte die je laat.

Een lange, gedetailleerde prompt ("Schrijf een paragraaf over de ethische implicaties van gezichtsherkenning in openbare ruimtes, focus op de Nederlandse context, maximaal 100 woorden, in actieve schrijfstijl") geeft veel constraints. Het antwoord wordt korter en specifieker — er is minder ruimte om te vullen.

Dit *AI prompt/answer length asymmetry* principe verklaart deels het verschil tussen Type 1 en Type 2. Bij Type 1 schrijf je lange, gedetailleerde prompts en krijg je gerichte antwoorden. Bij Type 2 schrijf je korte vragen en krijg je uitgebreide optielijsten.

Geen van beide is beter. Het hangt af van wat je nodig hebt: exploratie of executie.

## 7. Waarom dit onderscheid ertoe doet

Bij Type 1 en 2 blijft de mens verantwoordelijk en in controle. Bij Type 3 verschuift die controle naar de AI — vaak ongemerkt.

Voor creatief werk, technische beslissingen, en alles waar je later op aangesproken kunt worden, wil je in Type 1 of 2 zitten. Type 3 is prima voor throwaway scripts of experimenteren, maar gevaarlijk als standaardmodus.

En Type 4 — volledig zelf doen — blijft waardevol. Niet alles hoeft door een AI. Soms is het sneller, beter, of gewoon bevredigender om het zelf te bedenken.

## 8. Betere namen dan "Type 1, 2, 3, 4"

Phil Karlton's beroemde uitspraak luidt: "There are only two hard things in Computer Science: cache invalidation and naming things." Goede naamgeving is moeilijk, maar belangrijk.

Daniel Kahneman introduceerde in *Thinking, Fast and Slow* de termen "System 1" en "System 2" voor twee vormen van menselijk denken (Kahneman, 2011). Deze nietszeggende nummers zijn gemeengoed geworden, terwijl "Fast Thinking" en "Slow Thinking" — of beter nog "Intuitive" en "Deliberate" — zoveel begrijpelijker waren geweest. De ondertitel van zijn boek was letterlijk beschrijvender dan de termen zelf.

Roland Barthes introduceerde het concept "death of the author": de betekenis van een tekst moet niet afhangen van kennis over de auteur of diens intenties (Barthes, 1967). Toegepast op naamgeving: een goede term moet zichzelf uitleggen. Je zou niet de originele bron moeten raadplegen om te begrijpen wat "System 1" betekent.

Met dat in gedachten: mijn namen voor de vier types.

| Type | Naam              | Wie stuurt?                              |
| ---- | ----------------- | ---------------------------------------- |
| 1    | Human in the Lead | Mens bepaalt richting én heeft eindregie |
| 2    | Human Curates     | Mens selecteert uit AI-opties            |
| 3    | AI in the Lead    | AI bepaalt, mens accepteert              |
| 4    | Old Skool         | Mens alleen                              |

### 8.1 Meta: hoe deze naamgeving tot stand kwam

Deze blog is zelf een voorbeeld van Type 1 (Human in the Lead). Ik had initiële namen bedacht, en wilde de AI vragen of hij betere namen wist. Dit is echter een beetje een open vraag, en bovendien merk ik ook regelmatig dat de AI dan richtingen in gaat die ik echt niet wil. En dan ben je vaak langer bezig om alles te lezen, door te prompten of moet je alsnog alles schrijven (deze zin ben ik nu bijvoorbeeld ook zelf aan het schrijven, meest overige stukken schreef Claude op basis van mijn ideeen/prompts, maar de inleiding moet nog herschreven, want daar wil Claude het maar niet doen zoals ik een beetje in mijn hoofd heb.

In ieder geval gaf ik Claude nu dan de vraag om de huidige namen te beoordelen op basis van onderstaande vijf criteria, en om op basis van die feedback zelf met betere namen voor te stellen:

> A. Begrijpelijkheid; ook volgens het 'death of the author principe'
> B. Interne consistentie van de namen
> C. Uniekheid, is de term 'googlebaar'
> D. Goed onthoudbaar door mensen, kort genoeg maar ook interessant"

waarbij criterium B (interne consistentie van de namen) neerkomt op 'conceptual integrity', een belangrijk quality attribute volgens Frederick Brooks in 'The Mythical Man-Month'.

Claude stelde alternatieve namen voor:

| Type | Mijn naam         | Alternatieve naam (AI) |
| ---- | ----------------- | ---------------------- |
| 1    | Human in the Lead | Human Leads            |
| 2    | Human Curates     | —                      |
| 3    | AI in the Lead    | AI Slop                |
| 4    | Old Skool         | Human Solo             |

Maar deze auteur is nog niet *dead* — ik hanteer gewoon mijn initiële namen. De AI mag suggereren, ik beslis.

"AI Slop" voor Type 3 is wel een treffende informele naam, refererend aan het [woord van het jaar 2025](/ai-coding-sucks/): "slop" — AI-gegenereerde content zonder menselijke kwaliteitscontrole.

Door zelf de criteria op te geven, blijf je in Human in the Lead modus — ook al vraag je om feedback op ideeën. Het verschil met Human Curates: je geeft het kader waarbinnen de AI moet denken. Je vraagt niet "welke namen zou jij kiezen?" maar "evalueer deze namen tegen deze criteria."

Dit is hoe je wegblijft bij AI in the Lead: door constraints te geven, zelfs als je de AI om input vraagt.

### 8.2 "In the Lead" betekent ook eindregie

Bij Type 1 (Human in the Lead) is de mens niet alleen de *initiator* — degene die begint met een duidelijk idee — maar ook de *eindregisseur*. De mens heeft vetorecht op alles wat de AI produceert. En dus ook de *plicht* om alle output te beoordelen.

Hier zit de crux van werken met AI. LLMs zijn ontzettend productief. Ze genereren in seconden wat een mens uren zou kosten. Maar die snelheid verschuift het werk: in plaats van zelf schrijven, ben je voortdurend aan het checken. De asymmetrie die ik eerder beschreef werkt hier ook: hoe meer constraints je meegeeft, hoe gerichter de output, hoe minder je hoeft te controleren.

Dit leidt tot een belangrijke vraag: hoe maak je het controleren beheersbaar?

### 8.3 Constraints als vangnet in de ICT

In software development hebben we technieken ontwikkeld om code controleerbaar te houden — lang voordat AI code ging genereren. Deze "Old Skool" technieken worden nu onmisbaar als vangnet voor AI-gegenereerde code:

**a) Getypeerde talen gebruiken.** Een compiler vangt fouten af voordat de code draait. TypeScript in plaats van JavaScript, C# in plaats van Python voor kritieke systemen.

**b) Specifieke types maken.** Object-georiënteerde of getypeerde functionele talen dwingen je om het domein te modelleren. Hoe specifieker je types, hoe minder ruimte voor fouten.

**c) Unit tests als vangnet.** Mark Seemann beschrijft in zijn blog dat unit tests zelf een cyclomatische complexiteit van 1 moeten hebben (Seemann, 2019). Simpele tests voor complexe code. Als de AI code genereert die de tests breekt, weet je dat er iets mis is — zonder elke regel te hoeven lezen.

**d) Linters voor conventies.** Automatische controle op codeerstijl en patronen. Een linter is een "Old Skool" vorm van AI: deterministisch, voorspelbaar, en onvermoeibaar.

**e) En vast nog veel meer.** Code reviews, static analysis, integration tests, contract testing... Dit is geen uitputtende lijst — er is geen kwadrant of checklist die compleetheid garandeert. Het punt is: hoe meer constraints je hebt, hoe minder je handmatig hoeft te controleren.

De paradox: deze "Old Skool" technieken worden juist waardevoller in het AI-tijdperk. Ze vormen het vangnet dat het mogelijk maakt om AI-productiviteit te benutten zonder de controle te verliezen.

## 9. De eerste de beste

Deze blog zelf is een voorbeeld van Type 1: Human in the Lead. Ik had het onderwerp, het standpunt, de voorbeelden. De AI hielp met formuleren en structureren, maar de richting kwam van mij.

Dat geldt voor al mijn blogs. In de footer staat nu: *"Ik zit in AI-gebruikstype 1"* met een link naar deze pagina. Niet als disclaimer, maar als transparantie. Je weet wat je krijgt: mijn ideeën, met AI als tool.

Waarom "de eerste de beste"? Omdat Type 1 de eerste in mijn lijst is, en voor mij de beste werkwijze. Niet de enige goede — Type 2 (Human Curates) is prima voor brainstormen, Type 4 (Old Skool) blijft waardevol. Maar Type 1 is waar ik standaard wil zitten.

De titel is ook zelfspot. "De eerste de beste" klinkt als willekeurig kiezen. Maar soms is de eerste keuze ook de juiste.

## 10. Niet te verwarren met "Types of AI"

Als je zoekt naar "types of AI" vind je meestal de functionele classificatie: Reactive Machines, Limited Memory, Theory of Mind, en Self-Awareness (CareerFoundry, z.d.). Dat gaat over wat de AI *is*. Deze blog gaat over hoe *mensen* AI gebruiken — "types of AI use", niet "types of AI".

De functionele AI-types en deze gebruikstypes kun je wel combineren. Welk type AI past bij welk type gebruik? Kunnen Reactive Machines — deterministisch en voorspelbaar, zoals klassieke software — dienen als guard rails voor de minder voorspelbare LLMs?

Dit raakt aan een breder idee dat ik TRICERATOPS noem: **Trilaterally Resourced Intelligence for Controllable, Ethical, Reliable, Aligned and Trustworthy Operations**. De drie poten: klassieke software engineering, AI/LLMs, en menselijke intelligentie. Elk met eigen sterktes, samen sterker dan apart. Met een duidelijke rol voor Software Engineering, mijn vakgebied, die momenteel ondersneeuwt onder 'the new kid on the block'; LLM's, wat voor de meeste mensen gelijk staat aan AI (hoeveel er nog vele andere vormen/categorieen zijn).

[![Evolution of Operations - TRICERATOPS](https://pbs.twimg.com/media/EkZrZYIX0AAbS0q?format=jpg&name=medium)](https://x.com/0x13371/status/1316772846731964422)

De afbeelding hierboven is van A Cloud Guru (nu Pluralsight) en toont de "Evolution of Operations": Ops → DevOps → DevSecOps → DevSecMLOps → TricerAtOps. De grap: de industrie blijft maar prefixen toevoegen aan "Ops" totdat we bij een dinosaurus uitkomen.

![Evolution of Operations diagram showing progression from Ops to TricerAtOps](/assets/images/ai-gebruikstypes/triceratops-evolution.png)
De naam is niet nieuw — de meme circuleerde al in 2020, en er is zelfs een [satirische Medium-post](https://medium.com/better-programming/triceratops-why-devops-is-not-only-an-acronym-2177f1cf6bc2) over geschreven (Fontani, 2020). Maar ik wil deze woordgrap nu graag echt maken. Zoals George Michael zong: *"All we have to do, is take these lies, and make them true somehow."*

Maar dat is een onderwerp voor een volgende blog.

## Bronnen

- A Cloud Guru. (2020). *Evolution of Operations* [Afbeelding]. Geraadpleegd op 10 januari 2026 van https://x.com/0x13371/status/1316772846731964422
- Barthes, R. (1967). The Death of the Author. *Aspen*, 5-6. Geraadpleegd op 10 januari 2026 van https://en.wikipedia.org/wiki/The_Death_of_the_Author
- Brooks, F. P. (1975). *The Mythical Man-Month: Essays on Software Engineering*. Addison-Wesley.
- CareerFoundry. (z.d.). *Types of AI: A Guide to the Different Forms of Artificial Intelligence*. Geraadpleegd op 10 januari 2026 van https://careerfoundry.com/en/blog/data-analytics/types-of-ai/
- Kahneman, D. (2011). *Thinking, Fast and Slow*. Farrar, Straus and Giroux. Geraadpleegd op 10 januari 2026 van https://en.wikipedia.org/wiki/Thinking,_Fast_and_Slow
- Seemann, M. (9 december 2019). *Put cyclomatic complexity to good use*. Geraadpleegd op 10 januari 2026 van https://blog.ploeh.dk/2019/12/09/put-cyclomatic-complexity-to-good-use/
- Fontani, D. (14 oktober 2020). *TricerAtOps: Why DevOps Is Not Only an Acronym*. Better Programming. Geraadpleegd op 10 januari 2026 van https://medium.com/better-programming/triceratops-why-devops-is-not-only-an-acronym-2177f1cf6bc2
