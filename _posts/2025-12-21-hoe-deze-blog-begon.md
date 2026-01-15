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
---

Soms leiden de kleinste dingen tot onverwachte uitkomsten. Mijn blog website bestaat omdat ik even snel een boek wilde opzoeken.

**Leeswijzer:** Deze post legt uit hoe deze blog ontstond (sectie 1-2), beschrijft enkele features zoals de PDF-knop en SOFA Mode (sectie 3-5), en licht de filosofie erachter toe (sectie 6-7). Voor technische details over de Jekyll setup en het Adam Blog 2.0 theme, zie de [README.md](https://github.com/bartvanderwal/bartvanderwal.nl).

## 1. De oorsprong

Ik had eerder "Ethics For People Who Work In Tech" van Marc Steen geleend uit de HAN bibliotheek. Een goed boek over de ethische overwegingen die we tegenkomen als technologie professionals. Ik wilde het snel even herlezen en keek of er online content was om het te herinneren.

Dit bracht me bij het idee om mijn oude Quora antwoorden te hergebruiken. Jaren terug was ik daar een tijdje actief op, toen ik nog freelancer was. Ik had best wat posts geschreven rondom software development, en Java, .NET en NodeJS.

## 2. Van Quora naar eigen site

Maar in plaats van alleen documenten te verzamelen, dacht ik: waarom publiceer ik deze stukken niet ook gewoon netjes op mijn eigen site? Vandaar deze blog. Een simpele Jekyll site op GitHub Pages, eindelijk het domein bartvanderwal.nl gebruikend dat ik al jaren bezit.

Dus hier zijn we. Een blog die begon vanwege een boek over ethiek en wat oude Quora antwoorden die lagen te verstoffen. Het boek inspireerde me later ook tot een [opzet voor een keuzevak Ethics for Software Engineers](/ethics-for-software-engineers/). Soms werkt het zo.

## 3. De PDF-knop

Elke blogpost heeft een "Download PDF" knop. Handig voor offline lezen of archiveren.

De PDF wordt client-side gegenereerd met [html2pdf.js](https://github.com/eKoopmans/html2pdf.js) - een JavaScript library die html2canvas en jsPDF combineert om HTML naar PDF te converteren, direct in de browser zonder server-side processing.

## 4. SOFA Mode: Start Often, Fail Always

Een collega deelde onlangs een link naar [SOFA](https://tilde.town/~dozens/sofa/) 🛋️: "Start Often, Finish rArely." De anonieme auteur, die alleen de naam "dozens" gebruikt, beschrijft het idee zo (Dozens, z.d.): vier het starten van projecten, zonder de druk om alles af te maken.

Ik stel een alternatieve interpretatie voor: **Start Often, Fail Always**. Niet als cynisme, maar als DevOps-wijsheid: strikt genomen is een product is nooit "af". Als je af beschouwt als helemaal perfect; hoeven niks meer aan te doen. Het [Agile principe van "Embrace change"](https://agilemanifesto.org/principles.html) erkent dat requirements veranderen, inzichten groeien, en verbetering continu is.

### 4.1 Perfectie is een illusie

![Agile Manifesto screenshot: "Responding to change over following a plan"](/assets/images/posts/agile-manifesto-embrace-change.png)
*Agile manifesto: Value responding to change over following a plan, dus 'Embrace change'*

Een extreem voorbeeld: zelfs Newton had het niet helemaal correct. Neil deGrasse Tyson zegt over de slimste persoon ooit: ["Isaac Newton - nothing, nobody comes close"](https://www.youtube.com/watch?v=xKwlp1Ap9XA). En: "Great scientists are marked not by their answers, but by how great their questions are." En toch falen Newtons bewegingswetten op microscopisch niveau - daar nam quantum mechanica het over. Was Newton "fout"? Nee. Zijn wetten zijn *goed genoeg* voor 99,9% van de toepassingen. Ze zijn "klaar genoeg om te releasen."

Dit is de kern: perfectie is een illusie. Wat telt is waardevol genoeg om te gebruiken, stabiel genoeg om op te bouwen, en flexibel genoeg om te verbeteren.

## 5. SOFA Mode op deze blog

Dit principe pas ik toe op deze blog. Via de SOFA-toggle in het menu kun je wisselen tussen gepubliceerde posts en "draft" posts - ideeën die nog in ontwikkeling zijn.

### 5.1 Waarom drafts publiek maken?

- **Goed schrijven is herschrijven.** Een tekst is nooit af bij de eerste versie. Door drafts te delen, maak ik het schrijfproces transparant.
- **Feedback vroeg ophalen.** Net als bij software development: "release early, release often."
- **Verantwoording afleggen.** Elke post heeft een versiegeschiedenis met meerdere datums en wijzigingsnotities, vergelijkbaar met correcties op nieuwssites.

### 5.2 De drie datums

| Datum | Betekenis |
|-------|-----------|
| Gestart | Wanneer het idee voor deze post ontstond |
| Laatst gewijzigd | De meest recente inhoudelijke aanpassing |
| Gepubliceerd | Wanneer de post "af genoeg" was om te delen |

### 5.3 Niet indexeerbaar door zoekmachines

Drafts kunnen veranderen. De versietabel bovenaan geeft transparantie over de status. In "normale modus" zie je alleen gepubliceerde posts, gesorteerd op publicatiedatum. In SOFA-modus zie je drafts, gesorteerd op startdatum - de nieuwste ideeën eerst.

De drafts zijn bewust *niet* indexeerbaar door zoekmachines. Je moet ze actief opzoeken via de toggle. Zo houd ik de "officiële" blog schoon, maar deel ik wel mijn denkproces met nieuwsgierige lezers.

## 6. Open source

Deze blog is volledig open source. De code staat op [GitHub](https://github.com/bartvanderwal/bartvanderwal.nl) en is gebouwd met Jekyll en het Adam Blog 2.0 theme. Voor technische details over de setup, customizations, en deployment, zie de README.md in de repository.

## Bronnen

- Dozens. (z.d.). *SOFA: Start Often, Finish rArely*. Tilde Town. Geraadpleegd van https://tilde.town/~dozens/sofa
- Tyson, N. deGrasse. (8 januari 2025). *Neil deGrasse Tyson - Who Is The Greatest Scientific Mind?* [Video]. YouTube. Geraadpleegd van https://www.youtube.com/watch?v=xKwlp1Ap9XA

---

*Ik schrijf deze blogs samen met Claude Code of andere LLM's, maar altijd op basis van mijn eigen idee. Ik ben en blijf zelf verantwoordelijk voor de eindregie. Ik zit in [AI-gebruikstype 1, lees hier meer](2026-01-15-ict-onderwijs-aanpassen-voor-ai-2-oordeelsvorming.md).*
