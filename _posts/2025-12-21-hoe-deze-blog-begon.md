---
layout: post
title: "Hoe deze blog begon - en het idee erachter"
date: 2025-12-21
date_started: 2024-12-21
lang: nl
tags: [personal, blog, meta]
img: posts/boek-ethics-for-people-who-work-in-tech.png
revisions:
  - date: 2024-12-27
    type: Uitgebreid
    note: "SOFA Mode filosofie toegevoegd"
---

Soms leiden de kleinste dingen tot onverwachte uitkomsten. Mijn blog website bestaat omdat ik even snel een boek wilde opzoeken.

## De oorsprong

Ik had eerder "Ethics For People Who Work In Tech" van Marc Steen geleend uit de HAN bibliotheek. Een goed boek over de ethische overwegingen die we tegenkomen als technologie professionals. Ik wilde het snel even herlezen en keek of er een PDF online stond - en vond het op [Scribd](https://www.scribd.com/).

Scribd heeft een paywall, maar biedt een workaround: je kunt documenten downloaden als je eerst eigen content uploadt. Drie uploads is één download. Dus had ik drie eigen documenten nodig om te publiceren.

Ik keek door mijn Quora antwoorden - door de jaren heen heb ik best wat geschreven over software development, frameworks en technologie in het algemeen. Dus daarom maar wat Quora antwoorden van lang geleden gesubmit naar Scribd.

Maar in plaats van alleen documenten naar Scribd te uploaden, dacht ik: waarom publiceer ik deze stukken niet ook gewoon netjes op mijn eigen site? Vandaar deze blog. Een simpele Jekyll site op GitHub Pages, eindelijk het domein bartvanderwal.nl gebruikend dat ik al jaren bezit.

Dus hier zijn we. Een blog die begon vanwege een boek over ethiek, een paywall, en wat oude Quora antwoorden die lagen te verstoffen. Soms werkt het zo.

Het boek trouwens is de moeite waard als je in tech werkt. Het preekt niet; het biedt frameworks om na te denken over de ethische implicaties van wat we bouwen.

### De PDF-knop

Als overblijfsel van deze oorsprong heeft elke blogpost een "Download PDF" knop. Oorspronkelijk bedoeld om content te genereren voor Scribd, maar nu handig voor offline lezen of archiveren.

De PDF wordt client-side gegenereerd met [html2pdf.js](https://github.com/eKoopmans/html2pdf.js) - een JavaScript library die html2canvas en jsPDF combineert om HTML naar PDF te converteren, direct in de browser zonder server-side processing.

## SOFA Mode: Start Often, Fail Always

Een collega deelde onlangs een link naar [SOFA](https://tilde.town/~dozens/sofa/) 🛋️: "Start Often, Finish rArely." De anonieme auteur, die alleen de naam "dozens" gebruikt, beschrijft het idee zo (Dozens, z.d.): vier het starten van projecten, zonder de druk om alles af te maken.

Ik stel een alternatieve interpretatie voor: **Start Often, Fail Always**. Niet als cynisme, maar als DevOps-wijsheid: een product is nooit "af". Het Agile principe "Embrace change" erkent dat requirements veranderen, inzichten groeien, en verbetering continu is.

Een extreem voorbeeld: zelfs Newton had het niet helemaal correct. Neil deGrasse Tyson zegt over de slimste persoon ooit: ["Isaac Newton - nothing, nobody comes close"](https://www.youtube.com/watch?v=xKwlp1Ap9XA). En: "Great scientists are marked not by their answers, but by how great their questions are." En toch falen Newtons bewegingswetten op microscopisch niveau - daar nam quantum mechanica het over. Was Newton "fout"? Nee. Zijn wetten zijn *goed genoeg* voor 99,9% van de toepassingen. Ze zijn "klaar genoeg om te releasen."

Dit is de kern: perfectie is een illusie. Wat telt is waardevol genoeg om te gebruiken, stabiel genoeg om op te bouwen, en flexibel genoeg om te verbeteren.

### SOFA Mode op deze blog

Dit principe pas ik toe op deze blog. Via de SOFA-toggle in het menu kun je wisselen tussen gepubliceerde posts en "draft" posts - ideeën die nog in ontwikkeling zijn.

**Waarom drafts publiek maken?**

- *Goed schrijven is herschrijven.* Een tekst is nooit af bij de eerste versie. Door drafts te delen, maak ik het schrijfproces transparant.
- *Feedback vroeg ophalen.* Net als bij software development: "release early, release often."
- *Verantwoording afleggen.* Elke post heeft een versiegeschiedenis met meerdere datums en wijzigingsnotities, vergelijkbaar met correcties op nieuwssites.

**De drie datums:**

| Datum | Betekenis |
|-------|-----------|
| Gestart | Wanneer het idee voor deze post ontstond |
| Laatst gewijzigd | De meest recente inhoudelijke aanpassing |
| Gepubliceerd | Wanneer de post "af genoeg" was om te delen |

**Wat vraagt dit van de lezer?**

Drafts kunnen veranderen. De versietabel bovenaan geeft transparantie over de status. In "normale modus" zie je alleen gepubliceerde posts, gesorteerd op publicatiedatum. In SOFA-modus zie je drafts, gesorteerd op startdatum - de nieuwste ideeën eerst.

De drafts zijn bewust *niet* indexeerbaar door zoekmachines. Je moet ze actief opzoeken via de toggle. Zo houd ik de "officiële" blog schoon, maar deel ik wel mijn denkproces met nieuwsgierige lezers.

## Bronnen

- Dozens. (z.d.). *SOFA: Start Often, Finish rArely*. Tilde Town. Geraadpleegd van [https://tilde.town/~dozens/sofa](https://tilde.town/~dozens/sofa)
- Tyson, N. deGrasse. (8 januari 2025). *Neil deGrasse Tyson - Who Is The Greatest Scientific Mind?* [Video]. YouTube. Geraadpleegd van [https://www.youtube.com/watch?v=xKwlp1Ap9XA](https://www.youtube.com/watch?v=xKwlp1Ap9XA)

---

*Deze blogpost is geschreven met behulp van [Claude Code CLI](https://claude.ai/claude-code). De broncode van deze site is te vinden op [GitHub](https://github.com/bartvanderwal/bartvanderwal.nl).*
