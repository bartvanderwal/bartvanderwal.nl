---
layout: post
title: "Nieuw ICT-onderwijs ivm AI (2/3)"
subtitle: "Oordeelsvorming: Taxonomie van AI-gebruik - wie heeft de regie?"
date_started: 2026-01-12
date: 2026-01-20
lang: nl
tags: [ai, llm, onderwijs, taxonomie, oordeelsvorming]
img: posts/types-van-ai-gebruik-overzicht.png
draft: true
published: true
---

In dit  drieluik verken ik hoe ICT-onderwijs moet veranderen met de komst van AI. Dit tweede deel gaat over **oordeelsvorming**: een taxonomie van AI-gebruikstypes om te onderscheiden van wie ideeen komen, en wie de regie heeft; mens of AI?

**Drieluik structuur (BOB-model):**

- **[Blog 1/3 (Bewustwording)](/ict-onderwijs-aanpassen-voor-ai-1-bewustwording/)**: De komst van AI en evolutie van interactiemodi
- **Blog 2/3 (Oordeelsvorming)**: Taxonomie van AI-gebruik: wie heeft de regie? - deze blog
- **Blog 3/3 (Besluitvorming)**: AI als leermiddel, niet als butler

Stel je voor: ICT-student Amad zegt in een gesprek "Ik heb AI gebruikt."

**Scenario A: Stage bij een ICT-bedrijf.** De student zit tegenover zijn bedrijfsbegeleider tijdens zijn stage. Elke developer én stagiair heeft een betaald Claude-abonnement. De begeleider knikt goedkeurend: "Mooi, daarom hebben we je die toegang gegeven. Domme code uittypen hoef je niet zelf te doen."

**Scenario B: Essay voor school.** Dezelfde student zit tegenover zijn docent Professional Skills die AI heeft verboden. De docent fronst: "Dat mag niet. Je moet alles zelf schrijven." De student had zijn AI gebruik ook kunnen verzwijgen - het is moeilijk, zo niet onmogelijk om te controleren.

Twee gesprekken, dezelfde woorden, tegenovergestelde reacties. **Maar hier wordt het interessant.** Ook de bedrijfsbegeleider wil NIET dat de stagiair klakkeloos AI output overneemt. En ook de docent zou het prima vinden als de student AI gebruikt om feedback te krijgen op zelf geschreven tekst - mits de student alles controleert en in het proces leert. De reactie hangt niet af van *of* je AI gebruikt, maar *hoe*.

![Overzicht van de vier types AI-gebruik](/assets/img/posts/types-van-ai-gebruik-overzicht.png)
*De vier types AI-gebruik (met Type 4 opgesplitst in drie varianten): van menselijk idee met AI-generatie tot mens zonder AI*

Een **taxonomie** is een systematische classificatie — een onderverdeling van AI-gebruikstypes op basis van wie de regie heeft. Denk hierbij aan een **kwadrant** met twee dimensies: horizontaal van kort/open prompt naar lang/gedetailleerd, verticaal van AI actief naar menselijk actief.

Sectie 1 beschrijft de vier types. Sectie 2 behandelt hoe types door elkaar lopen. Sectie 3 introduceert prompt/answer asymmetry. Sectie 4 behandelt naamgeving. Sectie 5 sluit af met de conclusie.[^meta]

## 1. De vier AI-gebruikstypes

### Type 1: Human in the Lead

De mens heeft het idee en formuleert dit in een gedetailleerde eerste prompt — een soort specificatie van een probleem of eigen idee. De AI genereert op basis daarvan. De cyclus gaat verder met menselijke input en sturing.

Dit is hoe ik deze blog schrijf. Ik heb een onderwerp, een standpunt, specifieke voorbeelden die ik wil gebruiken. De AI helpt formuleren, structureren, bronnen checken. Maar de richting komt van mij.

Het principe: één prompt is geen prompt. Je itereert, stuurt bij, verwerpt suggesties, vraagt om alternatieven. De AI is een tool, geen auteur.

Je zou kunnen stellen dat een vraag om ideeën (Type 2) zelf ook een idee is. Maar het verschil zit in de mate van detail. Bij Type 1 bevat de eerste prompt al veel context en richting.

### Type 2: Human Curates

De mens vraagt de AI om ideeën te genereren — een korte, open vraag. De mens maakt vervolgens een serieuze keuze welke richting te volgen. Verdere stappen kunnen weer met AI, maar met bewuste menselijke input.

Voorbeeld: "Geef me vijf mogelijke invalshoeken voor een blog over remote werken." De mens kiest er één, en werkt die uit — mogelijk weer met AI-hulp, maar met eigen toevoegingen en richtinggevoel.

Het verschil met Type 1: de eerste prompt is kort en open, niet gedetailleerd en richtinggevend. Het verschil met Type 3: de mens doet meer dan alleen "ja" zeggen.

### Type 3: AI in the Lead

De mens vraagt AI om ideeën én om deze zelf uit te werken. Zonder serieuze tussenkomst: deze accepteert de voorgestelde voorkeurskeuze, of geeft door AI voorgelegde opties weer aan de AI terug ("wat zou jij doen?" of "kijk maar").

Dit is de valkuil van "vibe coding" zonder ervaring: de AI genereert, de mens klikt op "accept", en niemand weet meer precies wat er in de code staat of waarom.

Het resultaat kan technisch werken, maar de mens heeft geen grip op wat er is gemaakt of hoe het te onderhouden.

### Type 4: Mens zonder AI

Dan het vierde type. Je zou kunnen stellen dat dit geen AI-type is, omdat we bij het langsgaan van de kwadranten nu logisch uitkomen bij 'mens doet alles'. Maar ik doe het tegenovergestelde; ik splits deze op in drie subtypes.

#### 4a. Old Skool

Pure menselijke arbeid, zoals we het decennialang hebben gedaan. Geen AI-tool geopend, geen assistentie gevraagd. De klassieke manier van werken.

Dit is geen nostalgische terugblik. Voor veel taken blijft dit de snelste en beste aanpak. Een goede developer typt soms gewoon code, zonder eerst een AI te raadplegen. Een schrijver schrijft, een ontwerper ontwerpt. Soms zegt Claude code of andere tool ook: 'Je tokens zijn op., je kunt na 3 PM vanmiddag weer verder'. Of ze zijn zelfs op voor de maand; maar je bedenkt je dat je die wijziging ook prima zelf kunt doen.

### 4b. Rubber Duck AI: AI als klankbord

Je legt je probleem uit aan een collega, en tijdens het uitleggen bedenk je zelf de oplossing. Je had net zo goed tegen een badeend kunnen gaan praten.

De naam refereert aan rubber duck debugging: "a method of debugging code by articulating its problems in speech, commonly to an inanimate object such as a rubber duck" (Wikipedia, 2024).

Met AI werkt dit ook. Je begint een vraag te typen, en tijdens het formuleren realiseer je je het antwoord al. Of zelfs: je leest het AI-antwoord, beseft dat het nergens op slaat, en gaat je eigen weg — maar de noodzaak om je gedachtenproces uit te typen, of te formuleren heeft je geholpen.

Het interessante: de AI heeft geen inhoudelijke bijdrage geleverd. Het enige dat de AI deed was er zijn, als gesprekspartner. De motivatie komt van het gesprek zelf, niet van de output. Je zou kunnen zeggen dat je de AI antropomorfiseert — je behandelt het als gesprekspartner, terwijl het geen persoon is.

### 4c. Learned from AI: Geleerde kennis toepassen

Je hebt in het verleden AI gebruikt om iets te leren. Nu pas je die kennis toe — zonder AI te raadplegen. 'AI as teacher'.

Voorbeeld: je hebt Claude gevraagd hoe een specifiek designpatroon werkt. Je las de uitleg, begreep het, en schreef het zelf over. Later gebruik je dat patroon opnieuw, uit je hoofd, zonder terug te gaan naar de AI.

Dit is relevant voor digitale examens. Als een student iets heeft geleerd met behulp van AI, en het vervolgens zelfstandig kan toepassen op het examen (zonder AI-toegang), dan is dat legitiem gebruik. Het onderscheid met spieken: de kennis zit in je hoofd, niet in de tool.

Natuurlijk kun je niet bewijzen dat iemand iets via AI heeft geleerd versus via een leerboek. Maar dat maakt ook niet uit — het punt is dat de kennis is overgedragen en begrepen.

![Kwadrant van AI-gebruikstypes](/assets/img/posts/ai-usage-types-quadrant.png)
*Figuur: De vier AI-gebruikstypes in een kwadrant. Horizontale as: waar komt het idee vandaan (AI ←→ Mens). Verticale as: wie heeft de regie (AI ←→ Mens).*

## 5. In de praktijk lopen types door elkaar

In de praktijk gebruik je deze types door elkaar. Een sessie kan beginnen als Type 1, tijdelijk naar Type 2 gaan voor brainstormen, en eindigen in Type 4b (Rubber Duck AI) wanneer het AI-gesprek je doet realiseren dat je een bepaald stuk anders wilt aanpakken, en de AI bv. vast zit in een bepaald spoor. If zelfs Type 4a (Old Skool) wanneer je besluit een bepaald stuk helemaal zonder AI te doen.

Het punt is niet om strikt in één type te blijven. Het punt is om *bewust* te zijn van welk type je gebruikt en of dat past bij wat je wilt bereiken.

## 6. Prompt/answer length asymmetry

Een interessant patroon dat hieruit volgt: de lengte van je prompt en de lengte van het antwoord zijn vaak omgekeerd evenredig.

Een korte, open prompt ("Schrijf iets over AI") geeft de LLM weinig constraints. Het antwoord wordt lang en breed — de AI vult de ruimte die je laat.
Een lange, gedetailleerde prompt ("Schrijf een paragraaf over de ethische implicaties van gezichtsherkenning in openbare ruimtes, focus op de Nederlandse context, in actieve schrijfstijl. Noem twee concrete voorbeelden.") geeft veel constraints. Het antwoord wordt specifieker en meer gefocust — de AI weet beter wat je wilt en vult minder zelf in.

Dit *AI prompt/answer length asymmetry* principe verklaart deels het verschil tussen Type 1 en Type 2. Bij Type 1 schrijf je lange, gedetailleerde prompts en krijg je gerichte antwoorden. Bij Type 2 schrijf je korte vragen en krijg je uitgebreide optielijsten.

Geen van beide is beter. Het hangt af van wat je nodig hebt: exploratie of executie.

![Prompt answer length asymmetry](/assets/img/posts/prompt-answer-length-asymmetry.png)

*Figuur 2*: De Prompt answer length asymmetry

*Disclaimer*: Deze asymmetry die Figuur 2 tracht te schetsen is voorlopig nog even een *hypothese*, maar ik heb dit nog niet met praktisch onderzoek laten zien, of aangetoond buiten n=1. Sowieso is de 'short question, broader answer' en 'long question, more specific answer' relatie makkelijker hard te maken is, omdat het min of meer per definitie al geldt (gegeven een LLM die goed of in ieder geval geloofwaardig antwoord probeert te geven; wat ze doen). Voor het 'long question, short answer', 'short question, long answer' relatie heb ik nog onvoldoende tijd genomen dit ook proefonderlijk aan te tonen.

## 7. Betere namen dan "Type 1, 2, 3, 4"

Phil Karlton's beroemde uitspraak luidt: "There are only two hard things in Computer Science: cache invalidation and naming things." Goede naamgeving is moeilijk, maar wel belangrijk!

Daniel Kahneman introduceerde in *Thinking, Fast and Slow* de termen "System 1" en "System 2" voor twee vormen van menselijk denken (Kahneman, 2011). Dit is een indrukwekkend stukje theorie en achtergrond, maar zijn namen zijn om te huilen! Enkel op de kracht van de theorie zijn deze — van zichzelf nietszeggende nummers — gemeengoed geworden, en weten velen wat *type 1* en *type 2* thinking is. Zulke getallen onthouden schaar ik zelf onder het kopje 'accidental complexity', Andere voorbeeld is het onhandige 'Imperial system' dat Engeland en de US hanteren.

![De willekeurige complexiteit van het Imperial System: een mile is 5280 voet "omdat".](/assets/img/posts/imperial-system-5280-meme.png)
*Meme: "Why is there 5280 feet in a mile?" "Porque sí" (omdat het zo is). Een perfecte illustratie van accidental complexity — historische beslissingen zonder logische grond die we nu eeuwig mee moeten sleuren. (r/ShitAmericansSay, 2022).*

terwijl "Fast Thinking" en "Slow Thinking" — of beter nog "Intuitive" en "Deliberate" — zoveel begrijpelijker waren geweest. De ondertitel van zijn boek was letterlijk beschrijvender dan de termen zelf.

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

### 7.1 Meta: hoe deze naamgeving tot stand kwam

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

### 7.2 "In the Lead" betekent ook eindregie

Bij Type 1 (Human in the Lead) is de mens niet alleen de *initiator* — degene die begint met een duidelijk idee — maar ook de *eindregisseur*. De mens heeft vetorecht op alles wat de AI produceert. En dus ook de *plicht* om alle output te beoordelen.

Hier zit de crux van werken met AI. LLMs zijn ontzettend productief. Ze genereren in seconden wat een mens uren zou kosten. Maar die snelheid verschuift het werk: in plaats van zelf schrijven, ben je voortdurend aan het checken. De asymmetrie die ik eerder beschreef werkt hier ook: hoe meer constraints je meegeeft, hoe gerichter de output, hoe minder je hoeft te controleren.

Dit leidt tot een belangrijke vraag: hoe maak je het controleren beheersbaar?

### 7.3 Constraints als vangnet in de ICT

In software development hebben we technieken ontwikkeld om code controleerbaar te houden — lang voordat AI code ging genereren. Deze "Old Skool" technieken worden nu onmisbaar als vangnet voor AI-gegenereerde code:

**a) Getypeerde talen gebruiken.** Een compiler vangt fouten af voordat de code draait. TypeScript in plaats van JavaScript, C# in plaats van Python voor kritieke systemen.

**b) Specifieke types maken.** Object-georiënteerde of getypeerde functionele talen dwingen je om het domein te modelleren. Hoe specifieker je types, hoe minder ruimte voor fouten.

**c) Unit tests als vangnet.** Mark Seemann beschrijft in zijn blog dat unit tests zelf een cyclomatische complexiteit van 1 moeten hebben (Seemann, 2019). Simpele tests voor complexe code. Als de AI code genereert die de tests breekt, weet je dat er iets mis is — zonder elke regel te hoeven lezen.

**d) Linters voor conventies.** Automatische controle op codeerstijl en patronen. Een linter is een "Old Skool" vorm van AI: deterministisch, voorspelbaar, en onvermoeibaar.

**e) En vast nog veel meer.** Code reviews, static analysis, integration tests, contract testing... Dit is geen uitputtende lijst — er is geen kwadrant of checklist die compleetheid garandeert. Het punt is: hoe meer constraints je hebt, hoe minder je handmatig hoeft te controleren.

De paradox: deze "Old Skool" technieken worden juist waardevoller in het AI-tijdperk. Ze vormen het vangnet dat het mogelijk maakt om AI-productiviteit te benutten zonder de controle te verliezen.

## 8. Meta: Hoe deze blog tot stand kwam

Deze blog zelf is een voorbeeld van Type 1: Human in the Lead. Ik had het onderwerp, het standpunt, de voorbeelden. De AI hielp met formuleren en structureren, maar de richting kwam van mij.

Dat geldt voor al mijn blogs. In de footer staat nu: *"Ik zit in AI-gebruikstype 1"* met een link naar deze pagina. Niet als disclaimer, maar als transparantie. Je weet wat je krijgt: mijn ideeën, met AI als tool.

Waarom "de eerste de beste"? Omdat Type 1 de eerste in mijn lijst is, en voor mij de beste werkwijze. Niet de enige goede — Type 2 (Human Curates) is prima voor brainstormen, Type 4 (Old Skool) blijft waardevol. Maar Type 1 is waar ik standaard wil zitten.

De titel is ook zelfspot. "De eerste de beste" klinkt als willekeurig kiezen. Maar soms is de eerste keuze ook de juiste.

## 9. Conclusie: Van taxonomie naar toepassing

Deze blog presenteerde een taxonomie van AI-gebruikstypes. Van Type 1 (Human in the Lead) tot Type 4 (Old Skool), met Type 3 (AI in the Lead / Vibe Coding) als waarschuwing voor blind AI-gebruik.

De kernboodschap: **wie heeft de regie?** Bij Type 1 en 2 blijft de mens in controle. Bij Type 3 neemt de AI over - riskant voor studenten die nog niet kunnen beoordelen of de output klopt. Type 4 (Old Skool) blijft waardevol: eerst leren zonder AI, dan pas met AI.

De taxonomie is geen waardeoordeel. Het beschrijft werkwijzen, geen goede of foute keuzes. Maar voor lerende studenten is niet elk type even geschikt - dat behandelt blog 3/3.

## 10. Tot slot: Naar besluitvorming

Nu we een taxonomie hebben van verschillende gebruikstypes, kunnen we in blog 3/3 de kritieke vraag stellen: **wanneer is AI-gebruik veilig voor lerende studenten**, en hoe zorgen we dat AI het leerproces ondersteunt in plaats van ondermijnt?

**Lees verder:** [ICT-onderwijs aanpassen voor AI (3/3): Besluitvorming](/ict-onderwijs-aanpassen-voor-ai-3-besluitvorming/)

<details>
<summary><strong>BOB-vragen voor Oordeelsvorming (deze blog)</strong></summary>

![BOB-model: van probleem naar besluit via Beeldvorming, Oordeelsvorming en Besluitvorming](/assets/img/posts/bob-model-funnel.png)
*Figuur: Het BOB-model als trechter - van probleem of uitdaging naar besluit of oplossing (Schop, z.d.)*

In de Oordeelsvormingsfase van het BOB-model worden vier vragen beantwoord:

| Vraag | Beantwoording in deze blog |
| ----- | -------------------------- |
| **1. Wat is ons doel?** | Studenten core SE skills leren ondanks de "blokkade" dat LLM's het in het begin beter kunnen. Plus AI/prompting skills en kennis bijbrengen. → Sectie 7.2-7.3 (constraints) |
| **2. Waar maken we ons zorgen over?** | Geen studentenaanwas meer; studenten leren SE skills niet omdat ze AI als butler gebruiken zonder begrip. → Sectie 3 (AI in the Lead / Vibe Coding) |
| **3. Wat zou die zorgen verminderen?** | Als werkveld aangeeft dat SE skills nodig blijven; autoritatieve bronnen dit bevestigen (Google, podcasts); studenten kunnen laten zien dat ze met "AI als leraar" én eigen eindregie kunnen werken. → Sectie 1-2, 4c (Learned from AI) |
| **4. Aan welke voorwaarden moet het besluit voldoen?** | HAN-thema's (Slim, Schoon, Sociaal); onderwijs moet aantrekkelijk zijn voor studenten; ruimte voor keuzevakken en flexibilisering; ook aandacht voor ethiek en toekomstgericht organiseren. → Sectie 7.3 (vangnet technieken) |

</details>

---

## Bronnen

- Barthes, R. (1967). *The Death of the Author. Aspen*, 5-6. Geraadpleegd op 10 januari 2026 van https://en.wikipedia.org/wiki/The_Death_of_the_Author
- Brooks, F. P. (1975). *The Mythical Man-Month: Essays on Software Engineering*. Addison-Wesley.
- Brown, S. (2022). *The Lost Art of Software Design* [Presentatie]. Geraadpleegd op 13 januari 2026 van https://static.simonbrown.je/the-lost-art-of-software-design.pdf
- Harrer, S., & Ford, N. (oktober 2024). *Specification-Driven Development with GenAI Tools*. Martin Fowler. Geraadpleegd op 13 januari 2026 van https://martinfowler.com/articles/exploring-gen-ai/sdd-3-tools.html
- Kahneman, D. (2011). *Thinking, Fast and Slow*. Farrar, Straus and Giroux. Geraadpleegd op 10 januari 2026 van https://en.wikipedia.org/wiki/Thinking,_Fast_and_Slow
- Reddit. (2022, maart 7). *To remember how many feet there are in a mile, u just gotta use 5 tomatoes...* r/ShitAmericansSay. Geraadpleegd op 15 januari 2026 van https://www.reddit.com/r/ShitAmericansSay/comments/t8knwd/to_remember_how_many_feet_there_are_in_a_mile_u/
- Schop, G. J. (z.d.). *BOB-model*. Managementmodellensite. Geraadpleegd op 20 januari 2026 van https://managementmodellensite.nl/bob-model/
- Seemann, M. (9 december 2019). *Put cyclomatic complexity to good use*. Geraadpleegd op 10 januari 2026 van https://blog.ploeh.dk/2019/12/09/put-cyclomatic-complexity-to-good-use/
- Wikipedia. (2024). *Rubber duck debugging*. Geraadpleegd op 20 januari 2026 van https://en.wikipedia.org/wiki/Rubber_duck_debugging
- Wikipedia. (2024). *Taxonomy*. Geraadpleegd op 20 januari 2026 van https://en.wikipedia.org/wiki/Taxonomy
