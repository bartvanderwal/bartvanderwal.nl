---
layout: post
title: "Hoe deze blog begon"
subtitle: "En het idee erachter"
date: 2025-12-21
date_started: 2024-12-21
lang: nl
tags: [personal, blog, meta]
img: posts/boek-ethics-for-people-who-work-in-tech.png
revisions:
  - date: 2025-12-27
    type: Uitgebreid
    note: "SOFA Mode filosofie toegevoegd"
  - date: 2026-01-14
    type: Herstructurering
    note: "Meer tussenkopjes en leeswijzer toegevoegd"
  - date: 2026-01-21
    type: Uitgebreid
    note: "Credo-uitlegparagraaf 'Wie schrijft, die blijft!' (sectie 3) uitgewerkt; filosofie en SOFA-connectie verduidelijkt"
---

Soms leiden de kleinste dingen tot onverwachte uitkomsten. Mijn blog website bestaat omdat ik even snel een boek wilde opzoeken.

**Leeswijzer:** Deze post legt uit hoe deze blog ontstond (sectie 1-2), beschrijft enkele features zoals de PDF-knop en SOFA Mode (sectie 3-5), en licht de filosofie erachter toe (sectie 6-7). Voor technische details over de Jekyll setup en het Adam Blog 2.0 theme, zie de [README.md](https://github.com/bartvanderwal/bartvanderwal.nl).

## 1. De oorsprong

Ik had eerder "Ethics For People Who Work In Tech" van Marc Steen geleend uit de HAN bibliotheek. Een goed boek over de ethische overwegingen die we tegenkomen als technologie professionals. Ik wilde het snel even herlezen en keek of er online content was om het te herinneren.

Dit bracht me bij het idee om mijn oude Quora antwoorden te hergebruiken. Jaren terug was ik daar een tijdje actief op, toen ik nog freelancer was. Ik had best wat posts geschreven rondom software development, en Java, .NET en NodeJS.

## 2. Van Quora naar eigen site

Maar in plaats van alleen documenten te verzamelen, dacht ik: waarom publiceer ik deze stukken niet ook gewoon netjes op mijn eigen site? Vandaar deze blog. Een simpele Jekyll site op GitHub Pages, eindelijk het domein bartvanderwal.nl gebruikend dat ik al jaren bezit.

Dus hier zijn we. Een blog die begon vanwege een boek over ethiek en wat oude Quora antwoorden die lagen te verstoffen. Het boek inspireerde me later ook tot een [opzet voor een keuzevak Ethics for Software Engineers](/ethics-for-software-engineers/). Soms werkt het zo.

## 3. Waarom dit blog? Nou: "Wie schrijft, die blijft!"

Dit is het credo van deze blog.

**De stelling:** De beste manier om iets echt te gaan *snappen*, is het aan anderen uit te leggen. Of het opschrijven. Beide werken.

Iets wat in je hoofd helemaal lijkt te kloppen, verdampt opeens als je het probeert te formuleren. De woorden willen maar niet komen. En dan realiseer je je: je snapt het eigenlijk niet zo goed als je dacht. Papier is geduldig. Een scherm ook, in tegenstelling tot de luisteraar op kantoor die voorzichtig wegloopt omdat je niks uit je woorden krijgt.

Goed schrijven betekent herschrijven. Je eerste draft is altijd rommelig. Dat is normaal. Vandaar ook de SOFA mode op deze website — het idee dat publiceren een proces is, niet een eindresultaat. Maar als je dat schrijfproces doorloopt, wordt je kennis uiteindelijk sterker. En daardoor word *jij* ook sterker. Je wordt sterker.

**En dan het tweede deel van het credo:** De woorden blijven er, zelfs als jij ze zelf al weer beetje vergeten bent. Je diept ze dan makkelijker op uit je lange termijn geheugen. Want lezen is veel efficiënter dan alles opnieuw bedenken. En voor een deel is wat je geschreven hebt ook je *geëxternaliseerde lange termijn geheugen* — je uitgebreide hersenen buiten je schedel.

Dit heet soms *thinkism* — het idee dat je alles in een keer uit kunt denken. Dat werkt niet. Maar als je het opschrijft staat het. En kan iemand anders er ook kritische vragen bij stellen. En kunnen jullie — samen — verder komen. Dat is veel krachtiger dan alleen nadenken.

**Tot slot:** Schrijven blijft er zelfs nadat jij er zelf niet meer bent. Dat is vervreemdend. Ja, wie betaalt de domeinnaam? En hosting? Nou goed, er is altijd nog de [Wayback Machine](https://web.archive.org/). En een versiebeheer repository ('repo') met broncode en teksten op GitHub. Hopelijk blijft die nog wat langer staan. En jij — als lezer — kun de code zelf forken. En je eigen weblog maken op basis hiervan als je dat wilt. En niet bang bent je een beetje in code te verdiepen. Open source betekent ook dat.

*"If it was easy, everyone would do it!"* Schrijven is niet makkelijk. Goed schrijven nog minder. Maar daarom: "Wie schrijft, die blijft!"

## 4. De PDF-knop

Elke blogpost heeft een "Download PDF" knop. Handig voor offline lezen of archiveren.

De PDF wordt client-side gegenereerd met [html2pdf.js](https://github.com/eKoopmans/html2pdf.js) - een JavaScript library die html2canvas en jsPDF combineert om HTML naar PDF te converteren, direct in de browser zonder server-side processing.

## 5. SOFA Mode: Start Often, Fail Always

Een collega deelde onlangs een link naar [SOFA](https://tilde.town/~dozens/sofa/) 🛋️: "Start Often, Finish rArely." De anonieme auteur, die alleen de naam "dozens" gebruikt, beschrijft het idee zo (Dozens, z.d.): vier het starten van projecten, zonder de druk om alles af te maken.

Ik stel een alternatieve interpretatie voor: **Start Often, Fail Always**. Niet als cynisme, maar als DevOps-wijsheid: strikt genomen is een product is nooit "af". Als je af beschouwt als helemaal perfect; hoeven niks meer aan te doen. Het [Agile principe van "Embrace change"](https://agilemanifesto.org/principles.html) erkent dat requirements veranderen, inzichten groeien, en verbetering continu is.

### 5.1 Perfectie is een illusie

![Agile Manifesto screenshot: "Responding to change over following a plan"](/assets/img/posts/agile-manifesto-embrace-change.png)
*Agile manifesto: Value responding to change over following a plan, dus 'Embrace change'*

Een extreem voorbeeld: zelfs Newton had het niet helemaal correct. Neil deGrasse Tyson zegt over de slimste persoon ooit: ["Isaac Newton - nothing, nobody comes close"](https://www.youtube.com/watch?v=xKwlp1Ap9XA). En: "Great scientists are marked not by their answers, but by how great their questions are." En toch falen Newtons bewegingswetten op microscopisch niveau - daar nam quantum mechanica het over. Was Newton "fout"? Nee. Zijn wetten zijn *goed genoeg* voor 99,9% van de toepassingen. Ze zijn "klaar genoeg om te releasen."

Dit is de kern: perfectie is een illusie. Wat telt is waardevol genoeg om te gebruiken, stabiel genoeg om op te bouwen, en flexibel genoeg om te verbeteren.

## 6. SOFA Mode op deze blog

Dit principe pas ik toe op deze blog. Via de SOFA-toggle in het menu kun je wisselen tussen gepubliceerde posts en "draft" posts - ideeën die nog in ontwikkeling zijn.

### 6.1 Waarom drafts publiek maken?

- **Goed schrijven is herschrijven.** Een tekst is nooit af bij de eerste versie. Door drafts te delen, maak ik het schrijfproces transparant.
- **Feedback vroeg ophalen.** Net als bij software development: "release early, release often."
- **Verantwoording afleggen.** Elke post heeft een versiegeschiedenis met meerdere datums en wijzigingsnotities, vergelijkbaar met correcties op nieuwssites.

### 6.2 De drie datums

| Datum | Betekenis |
|-------|-----------|
| Gestart | Wanneer het idee voor deze post ontstond |
| Laatst gewijzigd | De meest recente inhoudelijke aanpassing |
| Gepubliceerd | Wanneer de post "af genoeg" was om te delen |

### 6.3 Niet indexeerbaar door zoekmachines

Drafts kunnen veranderen. De versietabel bovenaan geeft transparantie over de status. In "normale modus" zie je alleen gepubliceerde posts, gesorteerd op publicatiedatum. In SOFA-modus zie je drafts, gesorteerd op startdatum - de nieuwste ideeën eerst.

De drafts zijn bewust *niet* indexeerbaar door zoekmachines. Je moet ze actief opzoeken via de toggle. Zo houd ik de "officiële" blog schoon, maar deel ik wel mijn denkproces met nieuwsgierige lezers.

## 7. Open source

Deze blog is volledig open source. De code staat op [GitHub](https://github.com/bartvanderwal/bartvanderwal.nl) en is gebouwd met Jekyll en het Adam Blog 2.0 theme. Voor technische details over de setup, customizations, en deployment, zie de README.md in de repository.

## 8. Het experiment: CLAUDE.md als "systeem prompt"

Wie met mij aan deze blog werkt, ontdekt in de repository een bestand [CLAUDE.md](https://github.com/bartvanderwal/bartvanderwal.nl/blob/main/CLAUDE.md). Dit is niet documentatie, maar een instructieset voor AI-assistenten die in dit project werken.

**Waarom een apart bestand?** Mijn collega Theo Theunissen introduceerde bij mij het concept van *Continuous Documentation* — zowel in zijn promotie-rede als in zijn artikelen. Het idee: documentatie groeit mee met code in plaats van dat je het pas achteraf schrijft (omdat het moet), of allemaal vantevoren (waterval). Niet als last, maar als integraal onderdeel van engineering. Dit inzicht bleef bij me hangen. (Theo is helaas vorig jaar overleden.) In plaats van losse opmerkingen in commits, leg ik nu in CLAUDE.md vast:

- Welke coding-richtlijnen gelden (Hugo's markdownlint rules, MD032, MD031, etc.)
- Hoe de folder-structuur werkt
- Welke conventions er gelden (frontmatter velden, datum-logica, etc.)

Maar nog belangrijker: ik zet hier het *waarom* neer. Niet wat Claude moet doen, maar *waarom*. Dit helpt veel beter dan steeds dezelfde instructie te herhalen.

**Het "rare sprongetje"**: Ik gaf Claude opzet tegenstrijdige instructies. Soms zou ik zeggen: "Volg de regels uit CLAUDE.md, behalve nu gaan we ineens dingen testen." Of ik stelde bizarre vragen om te kijken hoe het met inconsistenties zou omgaan. Dit was een soort meta-experiment: *hoe reageert een AI op bokkesprongen van een gebruiker die eigenlijk inconsistent is?*

Het antwoord: Claude handelt dat redelijk goed af. Het vraagt voorzichtig of er een geldige reden is, of herinnert aan de richtlijnen. En meer nog: regelmatig zeggen we "laten we CLAUDE.md zelf bijwerken" — niet omdat de regels fout zijn, maar om de dokumentatie beter te maken naar gelang we meer leren.

Dit cycli van "werk → leer → documenteer → werk beter" is eigenlijk wat het wezen van goed engineering is. En de AI helpt daar actief mee.

## Bronnen

- Dozens. (z.d.). *SOFA: Start Often, Finish rArely*. Tilde Town. Geraadpleegd van https://tilde.town/~dozens/sofa
- Tyson, N. deGrasse. (8 januari 2025). *Neil deGrasse Tyson - Who Is The Greatest Scientific Mind?* [Video]. YouTube. Geraadpleegd van https://www.youtube.com/watch?v=xKwlp1Ap9XA

---

*Ik schrijf deze blogs samen met Claude Code of andere LLM's, maar altijd op basis van mijn eigen idee. Ik ben en blijf zelf verantwoordelijk voor de eindregie. Ik zit in [AI-gebruikstype 1, lees hier meer](/ict-onderwijs-aanpassen-voor-ai-1-bewustwording/).*
