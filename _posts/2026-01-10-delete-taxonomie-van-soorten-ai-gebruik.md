---
layout: post
title: "Een taxonomie van AI-gebruik"
subtitle: "Waarom alleen 'Ik heb AI gebruikt' onvoldoende zegt"
date: 2026-01-10
date_started: 2026-01-10
lang: nl
tags: [ai, llm, werkwijze, meta, taxonomie]
img: posts/ai-types van gebruik-overzicht.png
draft: true
published: false
---

Stel je voor: ICT-student Amad zegt in een gesprek "Ik heb AI gebruikt."

**Scenario A: Stage bij een ICT-bedrijf.** De student zit tegenover zijn bedrijfsbegeleider tijdens zijn stage. Elke developer én stagiair heeft een betaald Claude-abonnement. De begeleider knikt goedkeurend: "Mooi, daarom hebben we je die toegang gegeven. Domme code uittypen hoef je niet zelf te doen."

**Scenario B: Essay voor school.** Dezelfde student zit tegenover zijn docent Professional Skills die AI heeft verboden. De docent fronst: "Dat mag niet. Je moet alles zelf schrijven." De student had zijn AI gebruik ook kunnen verwzijgen - het is moeilijk, zo niet onmogelijk om te controleren.

Twee gesprekken, dezelfde woorden, tegenovergestelde reacties.

**Maar hier wordt het interessant.** Ook de bedrijfsbegeleider wil NIET dat de stagiair klakkeloos AI output overneemt. AI-gegenereerde code die niemand begrijpt is een onderhoudsnachtmerrie. En ook de docent zou het prima vinden als de student AI alleen gebruikt om feedback te krijgen op zelf geschreven tekst, spelfouten te corrigeren, en bronnen te verifiëren - mits de student elk antwoord controleert, hallucinaties uitsluit, en in het proces ook daadwerkelijk iets leert.

De reactie hangt niet af van *of* je AI gebruikt, maar *hoe*.

![Overzicht van de vier types AI-gebruik](/assets/images/posts/ai-types van gebruik-overzicht.png)
*De vier types AI-gebruik (met Type 4 opgesplitst in drie varianten): van menselijk idee met AI-generatie tot mens zonder AI*

In plaats van dat de reactie afhangt van de impliciete aannames van de luisteraar, zou het direct moeten afhangen van het *type* gebruik.

**Het verificatieprobleem voor begeleiders:** Maar hoe weet je als docent of bedrijfsbegeleider hoe een student AI daadwerkelijk heeft gebruikt? Je kunt niet in iemands hoofd kijken of de chat history controleren. Een student kan beweren zelf na te denken en AI alleen als hulpmiddel te gebruiken, terwijl in werkelijkheid alles blind wordt overgenomen zonder begrip.

Daarom werken veel ICT-opleidingen met een combinatie van toetsvormen:

1. **Mondelinge assessments** halverwege en aan het eind, waarin je je eigen werk toelicht en begrip aantoont. Je beschrijft het proces, legt keuzes uit, en demonstreert dat je weet wat je hebt gemaakt en waarom.

2. **Theorietoets zonder hulpmiddelen** over conceptbegrip - in een safe browser, zonder AI of internet. Je moet concepten uitleggen, alternatieven vergelijken, en ontwerpbeslissingen onderbouwen.

Deze aanpak verschuift de verantwoordelijkheid naar de student: gebruik AI zoals je wilt tijdens het maken, maar realiseer dat je later zonder hulpmiddelen moet kunnen uitleggen wat je hebt gedaan. Als je alles blind laat genereren zonder begrip, kom je bij het assessment of de theorietoets in de problemen.

Het dwingt studenten om werk te maken met begrip. AI mag ondersteunen, maar niet vervangen.

## Taxonomie

Een taxonomie is een systematische classificatie die verschijnselen indeelt in categorieën op basis van hun kenmerken (Merriam-Webster, n.d.). In de biologie classificeer je organismen, in de informatica classificeer je bijvoorbeeld foutmeldingen of architectuurpatronen. Recent onderzoek door Treude & Gerosa (2025) presenteert een taxonomie van 11 developer-AI interactietypes.

Ik presenteer hier een simpelere taxonomie van vier types van AI-gebruik (met Type 4 opgesplitst in drie varianten). Deze focust minder op specifieke UI-interactie dan Treude doet, maar gaat over waar het idee vandaan komt en wie de regie houdt.

**Leeswijzer:** Secties 1-4 beschrijven elk type, waarbij sectie 4 drie interessante varianten onderscheidt van 'mens doet het zelf'. Sectie 5 behandelt hoe de types in de praktijk door elkaar lopen. Sectie 6 introduceert het *prompt/answer length asymmetry* principe. Sectie 7 legt uit waarom dit onderscheid ertoe doet. **Sectie 8 is een waarschuwing voor studenten** over de expertise-valkuil en wanneer het veilig is om AI te gebruiken, inclusief een multi-criteria evaluatie (8.1) die de zes types objectief vergelijkt. Sectie 9 komt terug op betere naamgeving, met subsecties over eindregie en constraints. Sectie 10 past de theorie toe op deze blog zelf. Sectie 11 behandelt AI interaction modes — een orthogonale dimensie over *hoe* je met AI interacteert, inclusief de academische taxonomie van Treude & Gerosa. Tot slot plaatst sectie 12 dit in bredere context.

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

De mens vraagt AI om ideeën én om deze zelf uit te werken. Zonder serieuze tussenkomst: deze accepteert de voorgestelde voorkeurskeuze, of geeft door AI voorgelegde opties weer aan de AI terug ("wat zou jij doen?" of "kijk maar").

Dit is de valkuil van "vibe coding" zonder ervaring: de AI genereert, de mens klikt op "accept", en niemand weet meer precies wat er in de code staat of waarom.

Het resultaat kan technisch werken, maar de mens heeft geen grip op wat er is gemaakt of hoe het te onderhouden.

## 4. Type 4: Mens bedenkt alles zelf

Dan het vierde type. Je zou kunnen stellen dat dit geen AI-type is, omdat we bij het langsgaan van de kwadranten nu logisch uitkomen bij 'mens doet alles', nadat we zojuist het (soort van) 'AI doet alles' hebben besproken, wat we later 'AI Slop productie' noemen.

Ik doe juist het tegenovergestelde; na de drie voorgaande splits ik deze 4e op in drie subtypes.

### 4a. Old Skool — Geen AI in zicht

Pure menselijke arbeid, zoals we het decennialang hebben gedaan. Geen AI-tool geopend, geen assistentie gevraagd. De klassieke manier van werken.

Dit is geen nostalgische terugblik. Voor veel taken blijft dit de snelste en beste aanpak. Een goede developer typt soms gewoon code, zonder eerst een AI te raadplegen. Een schrijver schrijft, een ontwerper ontwerpt. Soms zegt Claude code of andere tool ook: 'Je tokens zijn op., je kunt na 3 PM vanmiddag weer verder'. Of ze zijn zelfs op voor de maand; maar je bedenkt je dat je die wijziging ook prima zelf kunt doen.

### 4b. Rubber Duck AI — AI maakt je dingen realiseren

De naam refereert aan rubber duck debugging: je legt je probleem uit aan een collega, en tijdens het uitleggen bedenk je zelf de oplossing. Je had net zo goed tegen een badeend kunnen gaan praten (ik weet niet of er iemand is die dit ooit gedaan heeft, maar je begrijpt vast het idee).

Met AI werkt dit ook. Je begint een vraag te typen, en tijdens het formuleren realiseer je je het antwoord al. Of je leest het AI-antwoord, beseft dat het nergens op slaat, en gaat je eigen weg — maar de noodzaak om je gedachtenproces uit te typen, of te formuleren heeft je geholpen.

Het interessante: de AI heeft geen inhoudelijke bijdrage geleverd. Het enige dat de AI deed was er zijn, als gesprekspartner. De motivatie komt van het gesprek zelf, niet van de output. Je zou kunnen zeggen dat je de AI antropomorfiseert — je behandelt het als gespreksparnter, terwijl het geen persoon is.

### 4c. Geleerd van AI — Zelf doen met opgedane kennis

Je hebt in het verleden AI gebruikt om iets te leren. Nu pas je die kennis toe — zonder AI te raadplegen. 'AI as teacher'.

Voorbeeld: je hebt Claude gevraagd hoe een specifiek designpatroon werkt. Je las de uitleg, begreep het, en schreef het zelf over. Later gebruik je dat patroon opnieuw, uit je hoofd, zonder terug te gaan naar de AI.

Dit is relevant voor digitale examens. Als een student iets heeft geleerd met behulp van AI, en het vervolgens zelfstandig kan toepassen op het examen (zonder AI-toegang), dan is dat legitiem gebruik. Het onderscheid met spieken: de kennis zit in je hoofd, niet in de tool.

Natuurlijk kun je niet bewijzen dat iemand iets via AI heeft geleerd versus via een leerboek. Maar dat maakt ook niet uit — het punt is dat de kennis is overgedragen en begrepen.

## 5. De types door elkaar

In de praktijk gebruik je deze types door elkaar. Een sessie kan beginnen als Type 1, tijdelijk naar Type 2 gaan voor brainstormen, en eindigen in Type 4b (Rubber Duck AI) wanneer het AI-gesprek je doet realiseren dat je het zelf anders wilt aanpakken — of zelfs Type 4a (Old Skool) wanneer je besluit het helemaal zonder AI te doen.

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

En de Type 4 varianten — van volledig zonder AI (4a) tot geleerd van AI maar nu zelfstandig toegepast (4c) — blijven waardevol. Niet alles hoeft door een AI. Soms is het sneller, beter, of gewoon bevredigender om het zelf te bedenken.

## 8. Waarschuwing voor studenten: de expertise-valkuil

Als je nog bezig bent met leren programmeren, is de taxonomie niet alleen een beschrijving van werkwijzen — het is een waarschuwing. Type 1, 2 en 3 vereisen allemaal dat je de AI-output kunt beoordelen. En daar zit het probleem: **studenten hebben nog niet de expertise om AI-hallucinaties te herkennen**.

Ervaren ontwikkelaars zien in één oogopslag of gegenereerde code klopt. Zij hebben hun "bullshit detector" aangescherpt door jaren van fouten maken, debuggen, en code reviews. Een junior developer accepteert misschien een verouderd pattern; een senior herkent het direct als tech debt.

Studenten missen deze detector volledig. Het AI-model antwoordt met vertrouwen — maar dat betekent niet dat het klopt.

![Is it safe to use ChatGPT for your task?](/assets/images/prompt-engineering/chat-gpt-comic-2.JPG)
*Flowchart: Wanneer is het veilig om ChatGPT te gebruiken? (Tiulkanov, 2023)*

Aleksandr Tiulkanov's flowchart laat het kernprobleem zien. De beslissende vraag: **"Do you have expertise to verify that the output is accurate?"** Voor studenten is het antwoord meestal "NO" — wat leidt naar "Unsafe to use ChatGPT".

Deze waarschuwing staat ook in de UNESCO Quick Start Guide voor AI in hoger onderwijs: "A critical understanding is needed to properly evaluate AI-generated text" (UNESCO IESALC, 2023, p. 6). Zonder die kritische expertise produceer je code die werkt in je demo, maar ontploft bij de eerste edge case.

### Het verificatieprobleem

Bij Type 1-3 moet je alle AI-output verifiëren. Maar waartegen? Ervaren ontwikkelaars hebben mentale modellen van hoe dingen werken. Studenten moeten terugvallen op:

- **Officiële documentatie** — maar die is vaak te technisch of te abstract
- **Gerenommeerde leerboeken** — maar die behandelen misschien niet de specifieke library of framework
- **Docenten en begeleiders** — de meest betrouwbare optie, maar niet schaalbaar

En hier is de valkuil: je kunt niet een tweede AI-tool gebruiken om de eerste te verifiëren. Dat is cirkelredeneren. Als je ChatGPT's Python-code laat checken door Claude, heb je twee onbetrouwbare bronnen in plaats van één.

### Start zonder AI

Mijn advies voor studenten: **begin met Type 4a (Old Skool)** totdat je de basis beheerst. Leer eerst handmatig:

- Hoe een for-loop werkt
- Waarom je een functie split
- Wat scope betekent
- Hoe je debugt zonder AI

Pas als je deze concepten beheerst, kun je veilig naar Type 4c (Learned from AI): gebruik AI om nieuwe concepten te leren, maar bouw eerst een fundament. En als je code laat genereren (Type 1-3), realiseer dan: **je bent verantwoordelijk voor code die je niet volledig begrijpt**.

Type 4b (Rubber Duck AI) is wel veilig: daar gebruik je AI alleen als klankbord voor je eigen ideeën, zonder inhoudelijke input over te nemen. Geen hallucinatie-risico, omdat je de AI-feedback al als onbetrouwbaar hebt geclassificeerd.

![Google's T-shaped model voor AI-enhanced developers](/assets/images/posts/google-t-shaped-ai-enhanced-developer.png)
*Figuur 1: De AI-enhanced developer heeft brede kennis (GenAI Usage, Adjacent/Non-Engineering), maar Core Software Engineering blijft de kern (Kam et al., 2025)*

Dit T-shaped model uit Google's onderzoek naar AI-enhanced developers visualiseert wat studenten nodig hebben (Kam et al., 2025). De verticale balk ("Core Software Engineering") is je fundament: programmeerconcepten, datastructuren, algoritmen, debugging. De horizontale balk bovenaan ("GenAI Usage") en aan de zijkanten ("Adjacent Engineering", "Non-Engineering") zijn aanvullingen die je later leert.

Als student moet je eerst de verticale balk opbouwen voordat je de horizontale balk (AI-gebruik) kunt dragen. Zonder die basis zak je door - je kunt AI-output niet beoordelen en bouwt op drijfzand.

De paradox: AI maakt programmeren toegankelijker, maar verlaagt tegelijk de lat voor mensen die nog niet kunnen beoordelen of de output klopt. Begin met begrip, niet met generatie.

### 8.1 Multi-criteria evaluatie voor studenten

Om de verschillende AI-gebruikstypes objectief te vergelijken voor lerende ICT-studenten, gebruik ik een multi-criteria beslissingstabel. Deze methode komt uit de ICT Research Methods workshop over besliskunde en helpt om subjectieve oordelen expliciet te maken.

Ik evalueer acht criteria op een schaal van `--` (zeer negatief) tot `++` (zeer positief):

| Criterium                     | Type 1 | Type 2 | Type 3 | Type 4a | Type 4b | Type 4c |
|-------------------------------|:------:|:------:|:------:|:-------:|:-------:|:-------:|
| **1. Productiviteit**         | +      | +      | ++     | 0       | 0       | +       |
| **2. Leercurve**              | --     | -      | ++     | 0       | 0       | +       |
| **3. Hallucinatie-risico**    | -      | -      | --     | ++      | ++      | +       |
| **4. Menselijke controle**    | ++     | +      | --     | ++      | ++      | ++      |
| **5. Verificatie-inspanning** | --     | --     | --     | 0       | 0       | -       |
| **6. Leerpotentieel**         | 0      | +      | --     | ++      | ++      | +       |
| **7. Begrip eigen werk**      | -      | -      | --     | ++      | ++      | +       |
| **8. Tech schuld risico**     | -      | 0      | --     | 0       | 0       | 0       |

**Belangrijkste inzichten:**

**Type 1-3 (AI genereert code):**

- Hoge productiviteit (`++` voor Type 3), maar tegen hoge prijs
- Verificatie-inspanning is `--` voor studenten: je moet alles checken maar mist de expertise
- Leerpotentieel en begrip zijn negatief: je leert weinig van code die je niet begrijpt
- Type 3 scoort overal negatief behalve op snelheid - dit is "vibe coding" zonder vangnet

**Type 4a (Old Skool):**

- Maximaal leerpotentieel (`++`) en begrip (`++`)
- Geen hallucinatie-risico, geen verificatie-inspanning
- Neutrale productiviteit - niet snel, maar ook niet langzaam als je de basis kent

**Type 4b (Rubber Duck AI):**

- Veilig voor studenten: geen hallucinatie-risico (`++`)
- Je gebruikt AI alleen als klankbord, niet voor inhoud
- Maximaal leerpotentieel - het proces van uitleggen helpt je denken

**Type 4c (Learned from AI):**

- Goede balans: geleerde kennis toepassen zonder AI-afhankelijkheid
- Positief leerpotentieel, begrip, en productiviteit
- Kleine verificatie-inspanning: je moet je geleerde kennis blijven toetsen

### De verificatie-inspanning paradox

Het meest kritieke verschil voor studenten: bij Type 1-3 moet je MEER verifiëren dan een ervaren ontwikkelaar, maar heb je MINDER middelen om dit te doen. Een senior ziet in één oogopslag of code klopt; een student moet alles opzoeken in officiële documentatie, leerboeken, of vragen aan docenten. Niet in andere AI-tools - dat is cirkelredeneren.

Dit maakt Type 1-3 voor studenten veel riskanter dan de scores suggereren. De negatieve scores voor "Verificatie-inspanning" (`--`) wegen zwaarder voor studenten dan voor ervaren ontwikkelaars.

### Geschrapte criteria

**Codekwaliteit** staat niet in de tabel. Dit criterium hangt niet af van het gebruikstype, maar van:

- Hoe goed je prompt schrijft
- Welke constraints je meegeeft (types, linters, tests)
- Of je code reviews doet
- Of je test-driven development toepast

Type 1 met goede prompts en constraints levert betere code dan Type 4a zonder tests of linters. Het criterium is relevant, maar orthogonaal aan de taxonomie.

## 9. Betere namen dan "Type 1, 2, 3, 4"

Phil Karlton's beroemde uitspraak luidt: "There are only two hard things in Computer Science: cache invalidation and naming things." Goede naamgeving is moeilijk, maar belangrijk.

Daniel Kahneman introduceerde in *Thinking, Fast and Slow* de termen "System 1" en "System 2" voor twee vormen van menselijk denken (Kahneman, 2011). Deze nietszeggende nummers zijn gemeengoed geworden, terwijl "Fast Thinking" en "Slow Thinking" — of beter nog "Intuitive" en "Deliberate" — zoveel begrijpelijker waren geweest. De ondertitel van zijn boek was letterlijk beschrijvender dan de termen zelf.

Roland Barthes introduceerde het concept "death of the author": de betekenis van een tekst moet niet afhangen van kennis over de auteur of diens intenties (Barthes, 1967). Toegepast op naamgeving: een goede term moet zichzelf uitleggen. Je zou niet de originele bron moeten raadplegen om te begrijpen wat "System 1" betekent.

Met dat in gedachten: mijn namen voor de vier types.

| Type | Naam              | Wie stuurt?                                          |
| ---- | ----------------- | ---------------------------------------------------- |
| 1    | Human in the Lead | Mens bepaalt richting én heeft eindregie             |
| 2    | Human Curates     | Mens selecteert uit AI-opties                        |
| 3    | AI in the Lead    | AI bepaalt, mens accepteert                          |
| 4a   | Old Skool         | Mens alleen, geen AI                                 |
| 4b   | Rubber Duck AI    | AI als denkpartner, geen inhoudelijke input          |
| 4c   | Learned from AI   | Mens past eerder geleerde AI-kennis zelfstandig toe  |

### 9.1 Meta: hoe deze naamgeving tot stand kwam

Deze blog is zelf een voorbeeld van Type 1 (Human in the Lead). Ik had initiële namen bedacht, en wilde de AI vragen of hij betere namen wist. Dit is echter een beetje een open vraag, en bovendien merk ik ook regelmatig dat de AI dan richtingen in gaat die ik echt niet wil. En dan ben je vaak langer bezig om alles te lezen, door te prompten of moet je alsnog alles schrijven (deze zin ben ik nu bijvoorbeeld ook zelf aan het schrijven, meest overige stukken schreef Claude op basis van mijn ideeen/prompts, maar de inleiding moet nog herschreven, want daar wil Claude het maar niet doen zoals ik een beetje in mijn hoofd heb.

In ieder geval gaf ik Claude nu dan de vraag om de huidige namen te beoordelen op basis van onderstaande vijf criteria, en om op basis van die feedback zelf met betere namen voor te stellen:

> A. Begrijpelijkheid; ook volgens het 'death of the author principe'
> B. Interne consistentie van de namen
> C. Uniekheid, is de term 'googlebaar'
> D. Goed onthoudbaar door mensen, kort genoeg maar ook interessant"

waarbij criterium B (interne consistentie van de namen) onderdeel van 'conceptual integrity', een van de belangrijkste quality attributes van een code base volgens Frederick Brooks in het klassieke boek 'The Mythical Man-Month' (Brooks, 1975).

Claude stelde alternatieve namen voor:

| Type | Mijn naam         | Alternatieve naam (AI) |
| ---- | ----------------- | ---------------------- |
| 1    | Human in the Lead | Human Leads            |
| 2    | Human Curates     | —                      |
| 3    | AI in the Lead    | AI Slop                |
| 4a   | Old Skool         | Human Solo             |
| 4b   | Rubber Duck AI    | —                      |
| 4c   | Learned from AI   | —                      |

Maar deze auteur is nog niet *dead* — ik hanteer gewoon mijn initiële namen. De AI mag suggereren, ik beslis.

"AI Slop" voor Type 3 is wel een treffende informele naam, refererend aan het [woord van het jaar 2025](/ai-coding-sucks/): "slop" — AI-gegenereerde content zonder menselijke kwaliteitscontrole.

Naast de bovenstaande namen zijn er ook alternatieve benamingen die de werkwijze beschrijven:

| Type | Naam              | Development-stijl naam         |
| ---- | ----------------- | ------------------------------ |
| 1    | Human in the Lead | Spec-Driven Development        |
| 2    | Human Curates     | Option-Driven Development      |
| 3    | AI in the Lead    | Vibe Coding                    |
| 4a   | Old Skool         | Traditional Development        |
| 4b   | Rubber Duck AI    | Conversational Development     |
| 4c   | Learned from AI   | Knowledge-Transfer Development |

**Spec-Driven Development** voor Type 1 verwijst naar het geven van een gedetailleerde specificatie (de prompt) waaruit de AI moet genereren. Net zoals bij traditionele spec-driven development begin je met een duidelijk document dat beschrijft wat er moet gebeuren.

Deze term komt uit het artikel [*Specification-Driven Development with GenAI Tools*](https://martinfowler.com/articles/exploring-gen-ai/sdd-3-tools.html) op Martin Fowler's website (Harrer & Ford, 2024). Interessant genoeg is dit artikel uit oktober 2024 — midden in de AI-hype — en benadrukt het het belang van specificaties schrijven voordat je code genereert.

Dit roept een interessante spanning op: Spec-Driven Development lijkt terug te gaan naar meer upfront design, terwijl de agile beweging decennialang heeft benadrukt dat Big Design Up Front (BDUF) problematisch is. Simon Brown's presentatie [*The Lost Art of Software Design*](https://static.simonbrown.je/the-lost-art-of-software-design.pdf) (2022) legt de nuance uit: het probleem was nooit design zelf, maar *te veel* design van tevoren. Zijn mantra: **"Just Enough Up-Front Design"** — genoeg om richting te geven, niet zoveel dat je flexibiliteit verliest.

Met AI wordt deze balans anders. Een goede prompt vereist design-denken: wat wil je precies? Welke constraints? Welke edge cases? Dit is upfront design, maar in een andere vorm — je ontwerpt de specificatie, niet meteen de implementatie.

**Vibe Coding** voor Type 3 is de tegenpool: geen echte specificatie, geen controle, gewoon accepteren wat de AI genereert op basis van een vaag gevoel ("the vibe"). Dit is wat er gebeurt wanneer mensen zonder ervaring AI laten coderen en alles blind overnemen.

Door zelf de criteria op te geven, blijf je in Human in the Lead modus — ook al vraag je om feedback op ideeën. Het verschil met Human Curates: je geeft het kader waarbinnen de AI moet denken. Je vraagt niet "welke namen zou jij kiezen?" maar "evalueer deze namen tegen deze criteria."

Dit is hoe je wegblijft bij AI in the Lead: door constraints te geven, zelfs als je de AI om input vraagt.

### 9.2 "In the Lead" betekent ook eindregie

Bij Type 1 (Human in the Lead) is de mens niet alleen de *initiator* — degene die begint met een duidelijk idee — maar ook de *eindregisseur*. De mens heeft vetorecht op alles wat de AI produceert. En dus ook de *plicht* om alle output te beoordelen.

Hier zit de crux van werken met AI. LLMs zijn ontzettend productief. Ze genereren in seconden wat een mens uren zou kosten. Maar die snelheid verschuift het werk: in plaats van zelf schrijven, ben je voortdurend aan het checken. De asymmetrie die ik eerder beschreef werkt hier ook: hoe meer constraints je meegeeft, hoe gerichter de output, hoe minder je hoeft te controleren.

Dit leidt tot een belangrijke vraag: hoe maak je het controleren beheersbaar?

### 9.3 Constraints als vangnet in de ICT

In software development hebben we technieken ontwikkeld om code controleerbaar te houden — lang voordat AI code ging genereren. Deze "Old Skool" technieken worden nu onmisbaar als vangnet voor AI-gegenereerde code:

**a) Getypeerde talen gebruiken.** Een compiler vangt fouten af voordat de code draait. TypeScript in plaats van JavaScript, C# in plaats van Python voor kritieke systemen.

**b) Specifieke types maken.** Object-georiënteerde of getypeerde functionele talen dwingen je om het domein te modelleren. Hoe specifieker je types, hoe minder ruimte voor fouten.

**c) Unit tests als vangnet.** Mark Seemann beschrijft in zijn blog dat unit tests zelf een cyclomatische complexiteit van 1 moeten hebben (Seemann, 2019). Simpele tests voor complexe code. Als de AI code genereert die de tests breekt, weet je dat er iets mis is — zonder elke regel te hoeven lezen.

**d) Linters voor conventies.** Automatische controle op codeerstijl en patronen. Een linter is een "Old Skool" vorm van AI: deterministisch, voorspelbaar, en onvermoeibaar.

**e) En vast nog veel meer.** Code reviews, static analysis, integration tests, contract testing... Dit is geen uitputtende lijst — er is geen kwadrant of checklist die compleetheid garandeert. Het punt is: hoe meer constraints je hebt, hoe minder je handmatig hoeft te controleren.

De paradox: deze "Old Skool" technieken worden juist waardevoller in het AI-tijdperk. Ze vormen het vangnet dat het mogelijk maakt om AI-productiviteit te benutten zonder de controle te verliezen.

## 10. De eerste de beste

Deze blog zelf is een voorbeeld van Type 1: Human in the Lead. Ik had het onderwerp, het standpunt, de voorbeelden. De AI hielp met formuleren en structureren, maar de richting kwam van mij.

Dat geldt voor al mijn blogs. In de footer staat nu: *"Ik zit in AI-gebruikstype 1"* met een link naar deze pagina. Niet als disclaimer, maar als transparantie. Je weet wat je krijgt: mijn ideeën, met AI als tool.

Waarom "de eerste de beste"? Omdat Type 1 de eerste in mijn lijst is, en voor mij de beste werkwijze. Niet de enige goede — Type 2 (Human Curates) is prima voor brainstormen, Type 4 (Old Skool) blijft waardevol. Maar Type 1 is waar ik standaard wil zitten.

De titel is ook zelfspot. "De eerste de beste" klinkt als willekeurig kiezen. Maar soms is de eerste keuze ook de juiste.

## 11. AI Interaction Modes: nog een andere dimensie

De vier types van AI-gebruik (Human in the Lead, Human Curates, AI in the Lead, Old Skool) beschrijven *wie* de regie heeft. Maar er is nog een andere dimensie: *hoe* je met de AI interacteert. Deze dimensie staat grotendeels orthogonaal aan de gebruikstypes, maar niet volledig onafhankelijk.

Recent onderzoek van Treude & Gerosa (2025) presenteert een uitgebreide taxonomie van 11 developer-AI interactietypes, waaronder auto-complete code suggestions, command-driven actions, conversational assistance, en comment-guided prompts. Voor de praktijk vereenvoudig ik dit tot drie primaire interaction modes, gebaseerd op drie dimensies:

### 11.1 Context/Input Scope

**Conversational AI** (ChatGPT-stijl): Geen automatische context. Je moet handmatig alles meegeven — code snippets, error messages, documentatie. De AI heeft alleen toegang tot wat jij expliciet in het chatvenster plakt.

**Inline AI** (Copilot-stijl): Context = het huidige bestand waar je in werkt, plus mogelijk nabije bestanden. De AI ziet waar je cursor staat, wat je net hebt getypt, en suggereert de volgende regel.

Treude & Gerosa (2025) onderscheiden binnen code completion twee interessante subtypes:

- **Auto-complete based on typing**: De AI triggert automatisch op basis van typpatronen en presenteert "ghost text" suggesties.
- **Comment-guided prompts**: De developer schrijft een comment in natuurlijke taal (bijvoorbeeld `// Convert list of strings to uppercase`), en de AI genereert code die aansluit bij deze beschrijving. Ook het kiezen van een duidelijke functienaam werkt zo: je typt `function calculateTotalPrice(` en de AI vult de body in op basis van de naam.

Dit laatste is eigenlijk een hybride vorm: je gebruikt Inline AI (de suggestie verschijnt direct in je editor), maar de trigger is een gedetailleerde prompt via een comment of functienaam — wat lijkt op Conversational AI, maar dan embedded in code.

**Agentic AI** (Claude Code-stijl): Context = hele repository, alle bestanden, terminal output, git history, open issues. De AI kan zelf bestanden lezen, zoeken, en analyseren.

### 11.2 Schrijfrechten

**Conversational AI**: Geen schrijfrechten. De AI genereert output, jij copy-past het naar je editor.

**Inline AI**: Beperkte schrijfrechten. Tab-completion, inline suggestions, autocomplete. De AI schrijft direct in je editor, maar alleen op plaatsen waar jij expliciet om vraagt (door te typen of tab te drukken).

**Agentic AI**: Volledige schrijfrechten (na goedkeuring). De AI kan bestanden editen, nieuwe bestanden aanmaken, commando's uitvoeren, git commits maken — alles wat een mens ook kan, maar dan geautomatiseerd.

### 11.3 Interactie-inspanning

**Conversational AI**: Veel heen-en-weer. Je stelt een vraag, krijgt een antwoord, copy-past code, test het, gaat terug naar de chat met een foutmelding, krijgt een fix, repeat. De context moet je handmatig meegeven.

**Inline AI**: Minimale inspanning. Je typt, drukt op tab, accepteert of verwerpt. De cyclus is kort en frequent.

**Agentic AI**: Eenmalige opdracht met checkpoints. Je geeft een taak ("refactor deze module om dependency injection te gebruiken"), de AI werkt autonoom, toont je tussenstappen, en wacht op goedkeuring voordat het schrijft.

### 11.4 Hoe dit correleert met de gebruikstypes

Deze interactiemodi zijn *grotendeels* orthogonaal aan de vier gebruikstypes, maar er zijn wel correlaties:

- **Type 1 (Human in the Lead)** werkt met *alle drie* de modi, maar vereist altijd constraints in de prompts — ongeacht de modus.
- **Type 2 (Human Curates)** gebruikt vaak **Conversational AI** om opties te brainstormen.
- **Type 3 (AI in the Lead / Vibe Coding)** — het risico is het grootst bij **Agentic AI**: volledige context + schrijfrechten + minimale inspanning = maximaal gevaar om controle te verliezen.
- **Type 4a (Old Skool)** gebruikt *geen* van de drie modi.

Het verschil met gebruikstypes: de interactiemodi gaan over *interface en workflow*, de gebruikstypes over *wie de regie houdt*. Maar hoe meer context en schrijfrechten de AI heeft, en hoe minder bewuste inspanning de mens levert, hoe groter het risico om onbewust in Type 3 te belanden.

![Vibe Coding vs Vibe Debugging meme](/assets/images/posts/vibe-coding-debugging-meme.jpg)
*Vibe Coding vs Vibe Debugging: het probleem manifesteert zich pas later ([@ai_for_success](https://x.com/ai_for_success/status/1903010684469731800), klikken op eigen risico)*

**Vibe Coding**: 😊 Alles lijkt te werken. Je probeert een simpel stukje code, de AI genereert iets, je test het kort, het doet wat je verwacht. Accept, commit, done.

**Vibe Debugging**: 💀 Het probleem ontstaat pas wanneer je verder wilt uitbreiden dan dat simpele of standaard stukje code. De gevibecode oplossing doet niet meer wat je wilt. Je probeert het via prompts op high level/functioneel niveau aan te passen, maar het lukt niet — of alleen met enorm veel inspanning en heen-en-weer. Dus je moet zelf in de code kijken. Dan moet je de code begrijpen. En vaak ben je weer terug bij af.

De les: kleine stapjes nemen. Code die je niet begrijpt, is technische schuld die zich later wreekt. De tijd die je "bespaart" met Vibe Coding betaal je dubbel terug tijdens Vibe Debugging.

### 11.5 Copilot: zowel Inline als Conversational

GitHub Copilot is interessant omdat het *beide* kanten beslaat: tab-completion (Inline AI) én een chatvenster (Conversational AI). Maar de tab-completion heeft beperkte context (huidige bestand + nabije bestanden), terwijl de chat geen schrijfrechten heeft. Copilot zit dus tussen Inline en Conversational in.

Dit maakt de categorisering niet strikt discreet, maar eerder een spectrum. De drie dimensies (context, schrijfrechten, inspanning) bepalen samen waar een tool op dat spectrum zit.

## 12. Niet te verwarren met "Types of AI"

Als je zoekt naar "types of AI" vind je meestal de functionele classificatie: Reactive Machines, Limited Memory, Theory of Mind, en Self-Awareness (CareerFoundry, z.d.). Dat gaat over wat de AI *is*. Deze blog gaat over hoe *mensen* AI gebruiken — "types of AI use", niet "types of AI".

De functionele AI-types en deze types van gebruik kun je wel combineren. Welk type AI past bij welk type gebruik? Kunnen Reactive Machines — deterministisch en voorspelbaar, zoals klassieke software — dienen als guard rails voor de minder voorspelbare LLMs?

Dit raakt aan een breder idee dat ik TRICERATOPS noem: **Trilaterally Resourced Intelligence for Controllable, Ethical, Reliable, Aligned and Trustworthy Operations**. De drie poten: klassieke software engineering, AI/LLMs, en menselijke intelligentie. Elk met eigen sterktes, samen sterker dan apart. Met een duidelijke rol voor Software Engineering, mijn vakgebied, die momenteel ondersneeuwt onder 'the new kid on the block'; LLM's, wat voor de meeste mensen gelijk staat aan AI (hoeveel er nog vele andere vormen/categorieen zijn).

[![Evolution of Operations - TRICERATOPS](https://pbs.twimg.com/media/EkZrZYIX0AAbS0q?format=jpg&name=medium)](https://x.com/0x13371/status/1316772846731964422)

De afbeelding hierboven is van A Cloud Guru (nu Pluralsight) en toont de "Evolution of Operations": Ops → DevOps → DevSecOps → DevSecMLOps → TricerAtOps. De grap: de industrie blijft maar prefixen toevoegen aan "Ops" totdat we bij een dinosaurus uitkomen.

![Evolution of Operations diagram showing progression from Ops to TricerAtOps](/assets/images/ai-types van gebruik/triceratops-evolution.png)
De naam is niet nieuw — de meme circuleerde al in 2020, en er is zelfs een [satirische Medium-post](https://medium.com/better-programming/triceratops-why-devops-is-not-only-an-acronym-2177f1cf6bc2) over geschreven (Fontani, 2020). Maar ik wil deze woordgrap nu graag echt maken. Zoals George Michael zong: *"All we have to do, is take these lies, and make them true somehow."*

Maar dat is een onderwerp voor een volgende blog.

## Bronnen

- A Cloud Guru. (2020). *Evolution of Operations* [Afbeelding]. Geraadpleegd op 10 januari 2026 van https://x.com/0x13371/status/1316772846731964422
- Barthes, R. (1967). The Death of the Author. *Aspen*, 5-6. Geraadpleegd op 10 januari 2026 van https://en.wikipedia.org/wiki/The_Death_of_the_Author
- Brooks, F. P. (1975). *The Mythical Man-Month: Essays on Software Engineering*. Addison-Wesley.
- Brown, S. (2022). *The Lost Art of Software Design* [Presentatie]. Geraadpleegd op 13 januari 2026 van https://static.simonbrown.je/the-lost-art-of-software-design.pdf
- CareerFoundry. (z.d.). *Types of AI: A Guide to the Different Forms of Artificial Intelligence*. Geraadpleegd op 10 januari 2026 van https://careerfoundry.com/en/blog/data-analytics/types-of-ai/
- Fontani, D. (14 oktober 2020). *TricerAtOps: Why DevOps Is Not Only an Acronym*. Better Programming. Geraadpleegd op 10 januari 2026 van https://medium.com/better-programming/triceratops-why-devops-is-not-only-an-acronym-2177f1cf6bc2
- Harrer, S., & Ford, N. (oktober 2024). *Specification-Driven Development with GenAI Tools*. Martin Fowler. Geraadpleegd op 13 januari 2026 van https://martinfowler.com/articles/exploring-gen-ai/sdd-3-tools.html
- Kahneman, D. (2011). *Thinking, Fast and Slow*. Farrar, Straus and Giroux. Geraadpleegd op 10 januari 2026 van https://en.wikipedia.org/wiki/Thinking,_Fast_and_Slow
- Kam, M., Miller, C., Wang, M., Tidwell, A., Lee, I. A., Malyn-Smith, J., Perez, B., Tiwari, V., Kenitzer, J., Macvean, A., & Barrar, E. (23 juni 2025). *What do professional software developers need to know to succeed in an age of Artificial Intelligence?* arXiv. Geraadpleegd op 13 januari 2026 van https://arxiv.org/abs/2506.00202
- Merriam-Webster. (z.d.). *Taxonomy*. Geraadpleegd van https://www.merriam-webster.com/dictionary/taxonomy
- Seemann, M. (9 december 2019). *Put cyclomatic complexity to good use*. Geraadpleegd op 10 januari 2026 van https://blog.ploeh.dk/2019/12/09/put-cyclomatic-complexity-to-good-use/
- Tiulkanov, A. (19 januari 2023). *Is it safe to use ChatGPT for your task?* [Flowchart]. Geraadpleegd op 13 januari 2026 van https://tiulkanov.info
- Treude, C., & Gerosa, M. A. (15 januari 2025). *How Developers Interact with AI: A Taxonomy of Human-AI Collaboration in Software Engineering*. arXiv. Geraadpleegd op 13 januari 2026 van https://arxiv.org/html/2501.08774v1
- UNESCO IESALC. (2023). *ChatGPT and Artificial Intelligence in Higher Education: Quick Start Guide* (Report no. ED/HE/IESALC/IP/2023/12). Geraadpleegd op 13 januari 2026 van https://www.iesalc.unesco.org/wp-content/uploads/2023/04/ChatGPT-and-Artificial-Intelligence-in-higher-education-Quick-Start-guide_EN_FINAL.pdf
