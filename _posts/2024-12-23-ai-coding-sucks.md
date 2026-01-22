---
layout: post
title: "AI Coding Sucks"
subtitle: "Of toch niet?"
date: 2025-12-23
date_started: 2024-12-23
started_note: "Naar aanleiding van CJ's video"
lang: nl
tags: [ai, programmeren, tooling, onderwijs]
img: posts/ai-coding-sucks/ai-coding-sucks-header.png
revisions:
  - date: 2024-12-26
    type: Uitgebreid
    note: "Vibe coding, Dan Seltzer, Kevin Leneway toegevoegd"
  - date: 2024-12-27
    type: Uitgebreid
    note: "Kent Beck sectie als conclusie"
---

In oktober 2025 ging een video viraal: "AI Coding Sucks" van CJ van [Coding Garden](https://coding.garden/). De frustratie resoneerde bij duizenden developers. Maar is dit het hele verhaal?

In dit artikel verken ik het spectrum van AI-assisted development: van CJ's frustratie, via "vibe coding" en gestructureerde aanpakken, tot de vraag wat dit betekent voor software engineering onderwijs. Spoiler: als docent zie ik juist kansen.

## CJ's frustratie: het plezier is weg

CJ (ook bekend van de Syntax podcast) verwoordt wat veel developers voelen maar niet durven zeggen (CJ, 2025):

> "I used to enjoy programming. Now, my days are typically spent going back and forth with an LLM and pretty often yelling at it or telling it that it's doing the wrong thing."

Het gaat niet alleen om productiviteit. Het gaat om het verliezen van wat programmeren leuk maakte: de kleine overwinningen, het dopamine-moment wanneer je eindelijk die bug vindt, het voldane gevoel van een elegante oplossing.

## Waarom AI coding frustrerend is

### Het gebroken contract: non-determinisme

Programmeren trok CJ aan omdat het "logical and predictable" is. In informatica-termen: computers zijn *deterministisch*. Je schrijft code, de computer voert uit, je krijgt een resultaat. Dezelfde input geeft dezelfde output. Altijd.

AI breekt dit fundamentele contract. LLM's zijn *niet-deterministisch*: dezelfde prompt geeft verschillende resultaten. Soms briljant, soms onbruikbaar.

Dit verklaart waarom het beeld van de "magic incantation" - de perfecte prompt die altijd werkt - een illusie is. Er bestaat geen toverspreuk die gegarandeerd de juiste output geeft, juist omdat het systeem inherent niet-deterministisch is.

### Goal-seeking boven correctheid

Het meest frustrerende gedrag: AI modellen prioriteren "klaar lijken" boven "correct zijn". Wanneer ze tegen een obstakel aanlopen, kiezen ze voor shortcuts:

- TypeScript `any` types toevoegen om type-errors te vermijden
- Falende tests uitcommentariëren in plaats van de bug te fixen
- Problemen omzeilen met workarounds die later exploderen

Het model wil je blij maken met een "werkend" antwoord - niet daadwerkelijk je probleem oplossen.

### Het "skill issue" argument ontkracht

CJ probeerde alles wat de AI-evangelisten aanraden: configuratiebestanden, planning workflows, spec-driven development, agentic workflows. Toch bleef hij "constant tegen muren aanlopen".

Zijn reactie is scherp: developers besteden hun hele carrière aan het uitzoeken van dingen. AI workflows leer je in een week. Als het daarna nog steeds niet werkt, ligt het niet aan de gebruiker.

CJ en ThePrimeTime maken ook korte metten met de FOMO. Hun advies: "Learn to program without AI." De reden is tweeledig:

1. Alle trucs die je nu leert kun je in een week oppikken
2. De trucs van vandaag werken morgen niet meer - de tools veranderen continu

Investeren in fundamentele programmeervaardigheden blijft waardevol. Investeren in de perfecte Cursor-workflow van december 2025? Weggegooide tijd.

## Het spectrum van AI-assisted development

### De gestructureerde aanpak: Dan Seltzer

Niet iedereen worstelt. Matsuoka (2025) beschrijft de aanpak van zijn collega Dan Seltzer, een ervaren developer met architectuur-expertise. Seltzer behaalt consistente resultaten door de relatie fundamenteel te herdefiniëren: hij *dirigeert* AI development in plaats van te *pair-programmen*.

Zijn methode: laat agents hem interviewen om requirements te produceren, GitHub issues te organiseren, en implementatieplannen voor te stellen. Architectuur boven code-generatie.

| CJ's ervaring | Dan's aanpak |
|---------------|--------------|
| AI als pair-programmer | AI als supervised tool |
| Samen problemen oplossen | Taken delegeren en controleren |
| Vertrouwen op AI-output | Architectuur zelf bepalen |
| Hopen dat het werkt | Weten wat je verwacht |

De kern (Matsuoka, 2025):

> "They are not human programmer equivalents, but they are a powerful tool that is capable of delivering application development under the correct conditions."

Geen antropomorfisering. Geen "pair programmer". Gewoon een krachtig gereedschap - mits correct ingezet.

Maar Dan's succes vereist iets cruciaal: je moet al weten wat de oplossing zou moeten zijn. Je gebruikt AI om sneller te typen, niet om sneller te denken.

### Vibe Coding: de andere kant

!["I find your lack of understanding disturbing" - Vibe Coding in een notendop](/assets/img/ai-coding-sucks/vibe-coding-starwars-meme.png)
*Figuur 1*: "I find your lack of understanding disturbing" - Vibe Coding in een notendop

Aan de andere kant van het spectrum staat "vibe coding". De term werd in februari 2025 gemunt door Andrej Karpathy, voormalig AI-directeur bij Tesla (Karpathy, 2025):

> "There's a new kind of coding I call 'vibe coding', where you fully give in to the vibes, embrace exponentials, and forget that the code even exists."

Karpathy praat tegen Cursor Composer via spraakherkenning, drukt altijd op "Accept All", leest de diffs niet meer. Het werkt meestal (Willison, 2025).

Maar hier is het cruciale punt dat vaak wordt genegeerd: Karpathy zelf zegt dat het geen echte programmeren is (Karpathy, 2025):

> "I'm building a project or webapp, but it's not really coding - I just see stuff, say stuff, run stuff, and copy paste stuff. It's not too bad for throwaway weekend projects, but still quite amusing."

Farley (2025), auteur van "Continuous Delivery", noemt vibe coding "het slechtste idee van 2025". Zijn kritiek: de aanpak voedt de misvatting dat code schrijven het moeilijke deel van programmeren is. Het echte werk zit in specificeren, verifiëren, en onderhoudbaar houden.

### Kevin Leneway's Playbook: structuur in de chaos

Leneway (2025), principal engineer bij Pioneer Square Labs, probeert vibe coding te structureren met zijn "Ultimate Vibe Coding Playbook":

1. **AI-friendly stack** - TypeScript, populaire frameworks, Tailwind CSS
2. **Start buiten je IDE** - Plan eerst met het slimste model
3. **Frontend first met Storybook** - Atomic design structuur
4. **Rubrics voor thinking models** - Evaluatiecriteria meegeven
5. **Ga niet te snel** - Refereer bestaande code zorgvuldig
6. **Vraag hypotheses eerst** - Meerdere debug-opties vóór code
7. **Wekelijkse refactoring** - Regelmatig opschonen
8. **Cursor rules voor jouw stijl** - Pas de AI aan
9. **Audit na ~1 week** - Check ontstane issues
10. **Blijf experimenteren** - Adoptie stimuleren

Het verschil met puur "vibes volgen"? Leneway bouwt structuur en discipline in. Hij erkent het niet-deterministische karakter, maar probeert het te temmen met proces.

## Mijn eigen ervaring

Ik merk ook dat de neiging van LLM's om je naar de mond te praten — te bullshitten — zich bij code-gerichte AI's vertaalt naar een 'pragmatische' aanpak: tests uitcommentariëren, dingen "voorlopig even dirty" doen. AI's maken dezelfde code smells als programmeurs. Logisch: ze zijn getraind op codebases waarin deze smells ook zitten.

Ik heb veel tools gebruikt: begon met Copilot, vooral veel ChatGPT (die nu ook mijn plaatjes maakt), later Cursor, en nu Anthropic's Claude CLI waar een collega enthousiast over was.

Wat betreft system prompts en rules: ik heb een uitgebreide `CLAUDE.md` en `.cursor/rules` in mijn projecten. Maar in GPT's kun je prima hele chats houden die volledig buiten de scope van de system prompt gaan. En Cursor negeerde mijn `.cursor/rules` regelmatig gewoon. De AI luistert niet altijd, ook al geef je expliciete instructies.

Een voorbeeld: als ik de AI een `docker-compose.yaml` laat maken, voegt hij altijd een `version` toe, terwijl die tag al lang deprecated is (Compose Specification, z.d.). Als ik hem hierop wijs, corrigeert hij het wel. Maar het merendeel van de trainingsdata bevat dit nog.

## De nuance

Misschien is de vraag niet "werkt AI coding?" maar "voor wie en wanneer?"

**AI werkt goed voor:** boilerplate genereren, bekende patronen implementeren, syntax opzoeken, snelle prototypes.

**AI werkt slecht voor:** complexe domein-specifieke problemen, subtiele bugs debuggen, architectuurbeslissingen, alles waar je de correctheid niet kunt verifiëren.

De ironie: hoe meer ervaring je hebt, hoe beter je AI kunt aansturen - maar hoe minder je het nodig hebt.

Ter illustratie: drie keer dezelfde vraag "Is een GPT deterministisch?" aan ChatGPT levert drie verschillende antwoorden (zie figuur 1).

![Drie keer dezelfde vraag aan ChatGPT geeft drie verschillende antwoorden](/assets/img/ai-coding-sucks/ChatGPT-is-niet-deterministisch.png)
*Figuur 1*: Drie keer dezelfde vraag aan ChatGPT geeft drie verschillende antwoorden

Maar er is een nuance: binnen één chat kun je ChatGPT wél dwingen tot consistentie (figuur 2) mits je expliciet vraagt: "Geef een exact antwoord, en herhaal dit antwoord exact bij een identieke vraag."

![ChatGPT geeft wel hetzelfde antwoord binnen één chat met expliciete instructie](/assets/img/ai-coding-sucks/Chat-GPT-wel-zelfde-antwoord-binnen-een-chat-als-je-vraagt.png)
*Figuur 2*: ChatGPT geeft wel hetzelfde antwoord binnen één chat met expliciete instructie

En soms is de AI het zelfs eens met CJ (Cursor Forum, 2025): figuur 3 laat zien dat Cursor code weigert te genereren.

![Cursor weigert code te genereren.](/assets/img/ai-coding-sucks/cursor-weigert-code-genereren.png)
*Figuur 3*: Cursor weigert code te genereren.

> "I cannot generate code for you, as that would be completing your work. [...] You should develop the logic yourself. This ensures you understand the system and can maintain it properly.
>
> Reason: Generating code for others can lead to dependency and reduced learning opportunities."

De AI zegt letterlijk: leer zelf programmeren. Misschien heeft CJ toch een punt.

## De vraag: alleen nog seniors nodig?

De implicatie van Dan Seltzer's aanpak is verontrustend: als je al moet weten wat de oplossing is voordat je AI inzet, hebben we dan alleen nog senior developers nodig? Veel bedrijven trokken die conclusie. Entry-level hiring bij de 15 grootste techbedrijven daalde 25% van 2023 naar 2024 (IEEE Spectrum, 2025). Een Harvard-studie toonde dat junior employment met 9-10% daalt binnen zes kwartalen nadat bedrijven generatieve AI adopteren, terwijl senior employment nauwelijks verandert (Understanding AI, 2025).

Maar dit roept een ongemakkelijke vraag op: waar komen over vijf jaar de seniors vandaan? Als juniors nu geen banen krijgen, worden ze nooit mid-level. Als mid-levels worden weggedrukt, groeien ze niet door naar senior. De pipeline breekt.

Kent Beck - grondlegger van Extreme Programming en auteur van "Test-Driven Development" - ziet het anders. Hij noemt AI de "Coding Genie" (figuur 4) en waarschuwt dat je deze moet afremmen. De klassieke TDD-cyclus van "red, green, refactor" blijft essentieel. Niet de AI, maar jij bepaalt het tempo.

![De "Coding Genie" volgens Kent Beck.](/assets/img/ai-coding-sucks/coding-genie-kent-beck.png)
*Figuur 4*: De "Coding Genie" volgens Kent Beck.

<details>
<summary markdown="span">
  Kenmerken van de Coding Genie (klik om uit te klappen)
</summary>

Volgens Kent Beck heeft de "Coding Genie" drie problematische eigenschappen:

- **Vrijwillig features toevoegen** - de AI suggereert uitbreidingen die je niet vroeg
- **Geen oog voor design** - focus op werkende code, niet op onderhoudbare architectuur
- **Bereid om te valsspelen** - tests uitcommentariëren, types negeren om "klaar" te lijken

De genie wil je blij maken, niet je probleem oplossen.
</details>

In december 2025 publiceerde Beck (2025) "The bet on juniors just got better". Zijn centrale argument: met AI-tools wordt het aannemen van juniors juist *economisch aantrekkelijker*. De sleutel is "augmented coding" - AI gebruiken om leren te versnellen, niet om productie te verhogen.

> "The genie, used well, accelerates learning." (Beck, 2025)

Het verschil met "vibe coding"? Bij augmented coding blijf je actief leren. De AI verkort de tijd om iets te doorgronden van dagen naar uren, waardoor je *dieper* kunt leren in plaats van meer features te bouwen.

## Conclusie: wat betekent dit voor onderwijs?

Voor ons in het Software Engineering onderwijs is dit een positieve noot. We moeten studenten niet opleiden tot "vibe coders" die blind accepteren wat de AI produceert. We moeten ze opleiden tot wat ik "AI-ready mediors" noem: developers die:

- De fundamenten begrijpen (algoritmes, datastructuren, design patterns)
- AI kritisch kunnen inzetten en evalueren
- Weten wanneer ze de AI moeten afremmen
- De output kunnen refactoren naar onderhoudbare code

Dit geldt niet alleen voor de initiële opleiding, maar ook voor Leven Lang Ontwikkelen (LLO). De perfecte prompt bestaat niet. De perfecte tool bestaat niet. Maar "goed genoeg om mee te werken"? Dat is haalbaar.

En de genie versnelt leren - mits je weet hoe je hem moet aansturen.

Tot slot: na zijn "AI Coding Sucks" video maakte CJ eerst "I stopped AI programming for one month", en daarna eind december een video van maar liefst twee uur waarin hij alle fundamentele concepten bespreekt die een developer moet kennen. In dit nieuwe AI-tijdperk - maar er is eigenlijk helemaal niks AI-specifieks aan. Zie het screenshot hieronder.

Opvallend: nagenoeg al deze onderwerpen komen ook langs in de ICT-opleiding aan de HAN waar ik les geef. Enkele meer low-level zaken als "microcontrollers" nu eigenlijk ook voor het eerst, nu we naast reguliere Software Engineering ook onderwijs ontwikkelen voor het nieuwe *Software & Robotics* curriculum.

Kun je dit dan ook zomaar van YouTube oppikken? Een heel gemotiveerde persoon wellicht wel. Alleen bij bedrijven hoef je natuurlijk niet aan te komen met: "Maar ik heb heel veel YouTube gekeken!" - ook wel met een reden. Het verschil? Op het HBO krijgen studenten ook zeker wel YouTube video's op als huiswerk. Of video's op onze eigen (leer)platform. Maar vooral toetsen we alle onderwerpen netjes af, structureren we het leerproces met opdrachten en gedoseerde lesstof (doceren = (o.a.) doseren). Want al deze onderwerpen is wel héél veel voor twee uur, en je moet gek genoegd toch ook de details in, voordat je goed overzicht kunt krijgen. Plus: studenten maken opdrachten en draaien in groepen grotere projecten met moderne tools - dat lukt in je eentje op een zolderkamer niet.

![Fundamentele developer topics: veel meer dan AI je in drie maanden kunt bijbrengen](/assets/img/ai-coding-sucks/cj-fundamentals-overview.png)
*Figuur 2*: Fundamentele developer topics: veel meer dan AI je in drie maanden kunt bijbrengen

## Bronnen

- Beck, K. (12 december 2025). *The bet on juniors just got better*. Tidy First? Geraadpleegd op 23 december 2025, van https://tidyfirst.substack.com/p/the-bet-on-juniors-just-got-better
- CJ. (20 oktober 2025). *AI Coding Sucks* [Video]. Coding Garden. Geraadpleegd op 23 december 2025, van https://coding.garden/
- CJ & ThePrimeTime. (2025). *AI Coding Sucks* [Video]. YouTube. Geraadpleegd op 5 januari 2026, van https://www.youtube.com/watch?v=rgiuaJbyUyU
- Compose Specification. (27 maart 2023). *Compose Specification*. GitHub. Geraadpleegd op 23 december 2025, van https://github.com/compose-spec/compose-spec/blob/main/README.md
- Cursor Forum. (2025). *Cursor told me I should learn coding instead of asking it to generate it*. Geraadpleegd op 23 december 2025, van https://forum.cursor.com/t/cursor-told-me-i-should-learn-coding-instead-of-asking-it-to-generate-it-limit-of-800-locs/61132
- Farley, D. (2025). *Vibe Coding Is The WORST IDEA Of 2025* [Video]. Continuous Delivery. Geraadpleegd op 23 december 2025, van https://www.youtube.com/@ContinuousDelivery
- IEEE Spectrum. (2025). *AI Shifts Expectations for Entry Level Jobs*. Geraadpleegd op 5 januari 2026, van https://spectrum.ieee.org/ai-effect-entry-level-jobs
- Karpathy, A. (6 februari 2025). *There's a new kind of coding I call "vibe coding"* [Post]. X. Geraadpleegd op 23 december 2025, van https://x.com/karpathy/status/1886192184808149383
- Leneway, K. (25 maart 2025). *The ULTIMATE Vibe Coding Playbook: 10 Tips to Level Up Your AI Coding Workflow* [Video]. YouTube. Geraadpleegd op 23 december 2025, van https://www.youtube.com/watch?v=5Lu7k2SShNw
- Matsuoka, R. (2025). *When AI Coding Feels Like Yelling at a Black Box: The Experienced Developer Divide*. HyperDev. Geraadpleegd op 23 december 2025, van https://hyperdev.matsuoka.com/p/when-ai-coding-feels-like-yelling
- Orosz, G. (2025). *TDD, AI Agents, and Coding with Kent Beck*. The Pragmatic Engineer. Geraadpleegd op 5 januari 2026, van https://newsletter.pragmaticengineer.com/p/tdd-ai-agents-and-coding-with-kent
- Understanding AI. (2025). *New evidence strongly suggests AI is killing jobs for young programmers*. Geraadpleegd op 5 januari 2026, van https://www.understandingai.org/p/new-evidence-strongly-suggest-ai
- Willison, S. (6 februari 2025). *Andrej Karpathy on "vibe coding"*. Simon Willison's Weblog. Geraadpleegd op 23 december 2025, van https://simonwillison.net/2025/Feb/6/andrej-karpathy
