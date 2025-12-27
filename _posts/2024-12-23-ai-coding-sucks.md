---
layout: post
title: "AI Coding Sucks - Of toch niet?"
date: 2025-12-23
date_started: 2024-12-23
started_note: "Naar aanleiding van CJ's video"
lang: nl
tags: [ai, programmeren, tooling, onderwijs]
draft: true
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

CJ (ook bekend van de Syntax podcast) verwoordt wat veel developers voelen maar niet durven zeggen:

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

Niet iedereen worstelt. Robert Matsuoka beschrijft de aanpak van zijn collega Dan Seltzer, een ervaren developer met architectuur-expertise. Seltzer behaalt consistente resultaten door de relatie fundamenteel te herdefiniëren: hij *dirigeert* AI development in plaats van te *pair-programmen*.

Zijn methode: laat agents hem interviewen om requirements te produceren, GitHub issues te organiseren, en implementatieplannen voor te stellen. Architectuur boven code-generatie.

| CJ's ervaring | Dan's aanpak |
|---------------|--------------|
| AI als pair-programmer | AI als supervised tool |
| Samen problemen oplossen | Taken delegeren en controleren |
| Vertrouwen op AI-output | Architectuur zelf bepalen |
| Hopen dat het werkt | Weten wat je verwacht |

De kern:

> "They are not human programmer equivalents, but they are a powerful tool that is capable of delivering application development under the correct conditions."

Geen antropomorfisering. Geen "pair programmer". Gewoon een krachtig gereedschap - mits correct ingezet.

Maar Dan's succes vereist iets cruciaal: je moet al weten wat de oplossing zou moeten zijn. Je gebruikt AI om sneller te typen, niet om sneller te denken.

### Vibe Coding: de andere kant

![Vibe Coding StarWars Meme](vibe-coding-starwars-meme.png)

Aan de andere kant van het spectrum staat "vibe coding". De term werd in februari 2025 gemunt door Andrej Karpathy, voormalig AI-directeur bij Tesla:

> "There's a new kind of coding I call 'vibe coding', where you fully give in to the vibes, embrace exponentials, and forget that the code even exists."

Karpathy praat tegen Cursor Composer via spraakherkenning, drukt altijd op "Accept All", leest de diffs niet meer. Het werkt meestal.

Maar hier is het cruciale punt dat vaak wordt genegeerd: Karpathy zelf zegt dat het geen echte programmeren is:

> "I'm building a project or webapp, but it's not really coding - I just see stuff, say stuff, run stuff, and copy paste stuff. It's not too bad for throwaway weekend projects, but still quite amusing."

Dave Farley, auteur van "Continuous Delivery", noemt vibe coding "het slechtste idee van 2025". Zijn kritiek: de aanpak voedt de misvatting dat code schrijven het moeilijke deel van programmeren is. Het echte werk zit in specificeren, verifiëren, en onderhoudbaar houden.

### Kevin Leneway's Playbook: structuur in de chaos

Kevin Leneway, principal engineer bij Pioneer Square Labs, probeert vibe coding te structureren met zijn "Ultimate Vibe Coding Playbook":

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

Een voorbeeld: als ik de AI een `docker-compose.yaml` laat maken, voegt hij altijd een `version` toe, terwijl die tag al lang deprecated is. Als ik hem hierop wijs, corrigeert hij het wel. Maar het merendeel van de trainingsdata bevat dit nog.

## De nuance

Misschien is de vraag niet "werkt AI coding?" maar "voor wie en wanneer?"

**AI werkt goed voor:** boilerplate genereren, bekende patronen implementeren, syntax opzoeken, snelle prototypes.

**AI werkt slecht voor:** complexe domein-specifieke problemen, subtiele bugs debuggen, architectuurbeslissingen, alles waar je de correctheid niet kunt verifiëren.

De ironie: hoe meer ervaring je hebt, hoe beter je AI kunt aansturen - maar hoe minder je het nodig hebt.

Ter illustratie: drie keer dezelfde vraag "Is een GPT deterministisch?" aan ChatGPT, drie verschillende antwoorden.

![Drie keer dezelfde vraag aan ChatGPT geeft drie verschillende antwoorden](ChatGPT-is-niet-deterministisch.png)
*Figuur 1: ChatGPT geeft drie verschillende antwoorden op exact dezelfde vraag - het bewijs van niet-determinisme.*

Maar er is een nuance. Binnen één chat kun je ChatGPT wél dwingen tot consistentie, mits je expliciet vraagt: "Geef een exact antwoord, en herhaal dit antwoord exact bij een identieke vraag."

![ChatGPT geeft wel hetzelfde antwoord binnen één chat met expliciete instructie](Chat-GPT-wel-zelfde-antwoord-binnen-een-chat-als-je-vraagt.png)
*Figuur 2: Met expliciete instructie geeft ChatGPT wél consistente antwoorden binnen dezelfde chat.*

En soms is de AI het zelfs eens met CJ:

![Claude in Cursor weigert code te genereren](cursor-weigert-code-genereren.png)
*Figuur 3: Cursor (Claude 3.5 Sonnet) weigert code te genereren: "You should develop the logic yourself."*

> "I cannot generate code for you, as that would be completing your work. [...] You should develop the logic yourself. This ensures you understand the system and can maintain it properly.
>
> Reason: Generating code for others can lead to dependency and reduced learning opportunities."

De AI zegt letterlijk: leer zelf programmeren. Misschien heeft CJ toch een punt.

## De vraag: alleen nog seniors nodig?

De implicatie van Dan Seltzer's aanpak is verontrustend: als je al moet weten wat de oplossing is voordat je AI inzet, hebben we dan alleen nog senior developers nodig? Veel bedrijven trokken die conclusie en stopten met het aannemen van juniors.

Maar Kent Beck - grondlegger van Extreme Programming en auteur van "Test-Driven Development" - ziet het anders. Hij noemt AI "The Genie" en waarschuwt dat je deze moet afremmen. De klassieke TDD-cyclus van "red, green, refactor" blijft essentieel. Niet de AI, maar jij bepaalt het tempo.

In december 2025 publiceerde Beck "The bet on juniors just got better". Zijn centrale argument: met AI-tools wordt het aannemen van juniors juist *economisch aantrekkelijker*. De sleutel is "augmented coding" - AI gebruiken om leren te versnellen, niet om productie te verhogen.

> "The genie, used well, accelerates learning."

Het verschil met "vibe coding"? Bij augmented coding blijf je actief leren. De AI verkort de tijd om iets te doorgronden van dagen naar uren, waardoor je *dieper* kunt leren in plaats van meer features te bouwen.

## Conclusie: wat betekent dit voor onderwijs?

Voor ons in het Software Engineering onderwijs is dit een positieve noot. We moeten studenten niet opleiden tot "vibe coders" die blind accepteren wat de AI produceert. We moeten ze opleiden tot wat ik "AI-ready mediors" noem: developers die:

- De fundamenten begrijpen (algoritmes, datastructuren, design patterns)
- AI kritisch kunnen inzetten en evalueren
- Weten wanneer ze de AI moeten afremmen
- De output kunnen refactoren naar onderhoudbare code

Dit geldt niet alleen voor de initiële opleiding, maar ook voor Leven Lang Ontwikkelen (LLO). De perfecte prompt bestaat niet. De perfecte tool bestaat niet. Maar "goed genoeg om mee te werken"? Dat is haalbaar.

En de genie versnelt leren - mits je weet hoe je hem moet aansturen.

## Bronnen

- Beck, K. (12 december 2025). *The bet on juniors just got better*. Tidy First? Geraadpleegd van tidyfirst.substack.com/p/the-bet-on-juniors-just-got-better
- CJ. (2025, 20 oktober). *AI Coding Sucks* [Video]. Coding Garden. Geraadpleegd van coding.garden
- Cursor Forum. (2025). *Cursor told me I should learn coding instead of asking it to generate it*. Geraadpleegd van forum.cursor.com/t/cursor-told-me-i-should-learn-coding-instead-of-asking-it-to-generate-it-limit-of-800-locs/61132
- Farley, D. (2025). *Vibe Coding Is The WORST IDEA Of 2025* [Video]. Continuous Delivery. Geraadpleegd van youtube.com/@ContinuousDelivery
- Karpathy, A. (6 februari 2025). *There's a new kind of coding I call "vibe coding"* [Tweet]. X. Geraadpleegd van x.com/karpathy/status/1886192184808149383
- Leneway, K. (25 maart 2025). *The ULTIMATE Vibe Coding Playbook: 10 Tips to Level Up Your AI Coding Workflow* [Video]. YouTube. Geraadpleegd van youtube.com/watch?v=5Lu7k2SShNw
- Matsuoka, R. (2025). *When AI Coding Feels Like Yelling at a Black Box: The Experienced Developer Divide*. HyperDev. Geraadpleegd van hyperdev.matsuoka.com/p/when-ai-coding-feels-like-yelling
- Willison, S. (6 februari 2025). *Andrej Karpathy on "vibe coding"*. Simon Willison's Weblog. Geraadpleegd van simonwillison.net/2025/Feb/6/andrej-karpathy
