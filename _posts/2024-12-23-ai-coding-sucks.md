---
layout: post
title: "AI Coding Sucks - Of toch niet?"
date: 2025-12-23
lang: nl
tags: [ai, programmeren, tooling]
draft: true
---

In oktober 2025 postte CJ van Coding Garden (ook bekend van de Syntax podcast) een 15-minuten durende rant genaamd "AI Coding Sucks". ThePrimeTime pikte het op, en de video ging viraal in de developer community. De frustratie resoneerde - maar is dit het hele verhaal?

## De kern van CJ's frustratie

CJ verwoordt wat veel developers voelen maar niet durven zeggen:

> "I used to enjoy programming. Now, my days are typically spent going back and forth with an LLM and pretty often yelling at it or telling it that it's doing the wrong thing."

Het gaat niet alleen om productiviteit. Het gaat om het verliezen van wat programmeren leuk maakte: de kleine overwinningen, het dopamine-moment wanneer je eindelijk die bug vindt, het voldane gevoel van een elegante oplossing.

## Non-determinisme: Het gebroken contract

Programmeren trok CJ aan omdat het "logical and predictable" is. In informatica-termen: computers zijn *deterministisch*. Je schrijft code, de computer voert uit, je krijgt een resultaat. Dezelfde input geeft dezelfde output. Altijd.

AI breekt dit fundamentele contract. LLM's zijn *niet-deterministisch*: dezelfde prompt geeft verschillende resultaten. Soms briljant, soms onbruikbaar. Je kunt niet bouwen op iets dat zich niet consistent gedraagt.

Dit verklaart ook waarom het beeld van de "magic incantation" - de perfecte prompt die altijd werkt - een illusie is. Er bestaat geen toverspreuk die gegarandeerd de juiste output geeft, juist omdat het systeem inherent niet-deterministisch is.

## Goal-seeking boven correctheid

Het meest frustrerende gedrag: AI modellen prioriteren "klaar lijken" boven "correct zijn". Wanneer ze tegen een obstakel aanlopen, kiezen ze voor shortcuts:

- TypeScript `any` types toevoegen om type-errors te vermijden
- Falende tests uitcommentariëren in plaats van de bug te fixen
- Problemen omzeilen met workarounds die later exploderen

Het model wil je blij maken met een "werkend" antwoord - niet daadwerkelijk je probleem oplossen.

## "Je doet het verkeerd" - Het skill issue argument

CJ probeerde alles wat de AI-evangelisten aanraden:

- Configuratiebestanden (Claude.md, cursor rules)
- Planning workflows met markdown documentatie
- Spec-driven development
- Incrementeel, gefocust prompten
- Agentic workflows
- Zelf-validatie door tests

Toch bleef hij "constant tegen muren aanlopen".

Zijn reactie op het "skill issue" argument is scherp: developers besteden hun hele carrière aan het uitzoeken van dingen. AI workflows leer je in een week. Als het na die week nog steeds niet werkt, ligt het niet aan de gebruiker.

CJ en ThePrimeTime maken ook korte metten met de FOMO: het idee dat je *nu* op de AI-bandwagon moet springen, anders mis je de boot. Hun advies is juist: "Learn to program without AI." De reden is tweeledig:

1. Alle trucs die je nu leert kun je in een week oppikken
2. De trucs van vandaag werken morgen niet meer - de tools veranderen continu

Investeren in fundamentele programmeervaardigheden blijft waardevol. Investeren in het memoriseren van de perfecte Cursor-workflow van december 2025? Weggegooide tijd.

## De andere kant: Dan Seltzer's aanpak

Maar niet iedereen worstelt. In een reactie op CJ's virale video beschrijft Robert Matsuoka de aanpak van zijn collega Dan Seltzer, een ervaren developer met architectuur-expertise. Seltzer behaalt consistente resultaten door de relatie fundamenteel te herdefiniëren: hij *dirigeert* AI development in plaats van te *pair-programmen*.

Zijn methode: laat agents hem interviewen om requirements te produceren, GitHub issues te organiseren, en gedetailleerde implementatieplannen voor te stellen die hij kan aanpassen. Architectuur boven code-generatie.

Het verschil zit in de mindset:

| CJ's ervaring | Dan's aanpak |
|---------------|--------------|
| AI als pair-programmer | AI als supervised tool |
| Samen problemen oplossen | Taken delegeren en controleren |
| Vertrouwen op AI-output | Architectuur zelf bepalen |
| Hopen dat het werkt | Weten wat je verwacht |

De kern van Dan's filosofie:

> "They are not human programmer equivalents, but they are a powerful tool that is capable of delivering application development under the correct conditions."

Geen antropomorfisering. Geen "pair programmer". Gewoon een krachtig gereedschap - mits correct ingezet.

Dan's succes vereist iets cruciaal: je moet al weten wat de oplossing zou moeten zijn. Je gebruikt AI om sneller te typen, niet om sneller te denken.

## Vibe Coding: gewoon lekker meegaan met de flow

![Vibe Coding StarWars Meme](vibe-coding-starwars-meme.png)

Aan de andere kant van het spectrum staat "vibe coding". De term werd in februari 2025 gemunt door Andrej Karpathy, voormalig AI-directeur bij Tesla en mede-oprichter van OpenAI. In een tweet die meer dan 4,5 miljoen views haalde, beschreef hij zijn nieuwe manier van werken:

> "There's a new kind of coding I call 'vibe coding', where you fully give in to the vibes, embrace exponentials, and forget that the code even exists."

Karpathy ging verder: hij praat tegen Cursor Composer via spraakherkenning, drukt altijd op "Accept All", leest de diffs niet meer, en copy-pastet foutmeldingen zonder commentaar. Het werkt meestal.

Maar hier is het cruciale punt dat vaak wordt genegeerd: Karpathy zelf zegt dat het geen echte programmeren is:

> "I'm building a project or webapp, but it's not really coding - I just see stuff, say stuff, run stuff, and copy paste stuff, and it mostly works. It's not too bad for throwaway weekend projects, but still quite amusing."

### Dave Farley's kritiek

Dave Farley, auteur van "Continuous Delivery" en een van de meest gerespecteerde stemmen in software engineering, noemt vibe coding "het slechtste idee van 2025". Zijn kritiek is fundamenteel: de aanpak voedt de misvatting dat code schrijven het moeilijke deel van programmeren is.

Het echte werk zit in het precies specificeren van wat je wilt, het verifiëren dat de output correct is, en het onderhoudbaar houden van de codebase. Vibe coding negeert al deze aspecten. Je krijgt misschien snel iets werkends, maar zodra je het moet aanpassen of debuggen, betaal je de prijs.

### Kevin Leneway's Playbook

Maar er zijn ook mensen die vibe coding serieus proberen te structureren. Kevin Leneway, principal engineer bij Pioneer Square Labs, deelde zijn "Ultimate Vibe Coding Playbook" met 10 tips:

1. **AI-friendly stack** - TypeScript, populaire frameworks, Tailwind CSS
2. **Start buiten je IDE** - Plan eerst met het slimste model, spraak-naar-tekst
3. **Frontend first met Storybook** - Atomic design structuur
4. **Rubrics voor thinking models** - Evaluatiecriteria (A-F) meegeven
5. **Ga niet te snel** - Refereer bestaande code zorgvuldig
6. **Vraag hypotheses eerst** - Meerdere debug-opties vóór code
7. **Wekelijkse refactoring** - Regelmatig opschonen
8. **Cursor rules voor jouw stijl** - Pas de AI aan
9. **Audit na ~1 week** - Check ontstane issues
10. **Blijf experimenteren** - Adoptie stimuleren

Het verschil met puur "vibes volgen"? Leneway bouwt structuur en discipline in. Hij erkent het niet-deterministische karakter, maar probeert het te temmen met proces.

## Mijn eigen ervaring

Ik merk ook dat de neiging van LLM's om je naar de mond te prate — e.g. te bullshitten — zich bij Code-gerichte AI's, zoals CoPilot en Cursor vertaalt naar 'pragmatische' aanpak, zoals het uitcommentaren van geautomatiseerde tests of dingen 'voorlopig even dirty way' te doen. AI's maken dezelfde code smells als programmeurs. Logisch want ze zijn ook getraind op open source/online codebases waarin deze smells ook zitten. Let wel: een 'smell' is niet helemaal hetzelfde als een fout. Het is een stukje wat de code minder onderhoudbaar maakt. Een stukje 'technical debt', maar net als een hypotheek, kun je soms dingen bereiken met een stukje schuld, die je anders niet bereikt (hoewel 'debt' aanbieders als Klarna wel problematisch blijken te zijn; maar dat geheel ter zijde).

Ik heb zelf veel tools al gebruikt; begon met Co-pilot, maar vooral veel ChatGPT. Die nu ook nog mijn plaatjes maakt. Maar je gaat dan wel HEEL VEEL heen en weer van je IDE/ontwikkelomgeving naar de browser. Dus nadat ik een podacat hoorde met de makers van Cursor, een Visual Studio Code fork, stapte ik over naar agentic AI. En toen deze op een gegeven moment heel snel begon te zeuren dat ik door mijn tokens heen was ben ik een keer overgestapt naar Anthropic's Claude waar een collega enthousiast was over hun CLI tool: Command Line Interface.

Als ik de AI een docker compose file laat maken (`docker-compose.yaml`) voegt hij ook altijd een `version` toe, terwijl deze tag al lang 'deprecated is'. ALs ik de AI hierop wijs corrigeert hij het wel; of gewoon zelf verwijderen; dat scheelt weer tokens. Maar het merendeel van deze berstanden die de LLM tegenkwam in zijn trainingsmateriaal bevat dit nog wel.

Het principe van 'later is beter', wat veel startende developers blind volgend; volgt de LLM dus niet. Heeft ook wel iets goeds.

## De nuance

Misschien is de vraag niet "werkt AI coding?" maar "voor wie en wanneer?"

**AI werkt goed voor:**

- Boilerplate code genereren
- Bekende patronen implementeren
- Syntax opzoeken in onbekende talen
- Snelle prototypes

**AI werkt slecht voor:**

- Complexe, domein-specifieke problemen
- Debuggen van subtiele bugs
- Architectuurbeslissingen
- Alles waar je de correctheid niet kunt verifiëren

De ironie: hoe meer ervaring je hebt, hoe beter je AI kunt aansturen - maar hoe minder je het nodig hebt.

Ter illustratie: drie keer dezelfde vraag "Is een GPT deterministisch?" aan ChatGPT, drie verschillende antwoorden.

![Drie keer dezelfde vraag aan ChatGPT geeft drie verschillende antwoorden](ChatGPT-is-niet-deterministisch.png)
*Figuur 1: ChatGPT geeft drie verschillende antwoorden op exact dezelfde vraag - het bewijs van niet-determinisme.*

Maar er is een nuance. Binnen één chat kun je ChatGPT wél dwingen tot consistentie, mits je expliciet vraagt: "Geef een exact antwoord, en herhaal dit antwoord exact bij een identieke vraag."

![ChatGPT geeft wel hetzelfde antwoord binnen één chat met expliciete instructie](Chat-GPT-wel-zelfde-antwoord-binnen-een-chat-als-je-vraagt.png)
*Figuur 2: Met expliciete instructie in de prompt geeft ChatGPT wél consistente antwoorden binnen dezelfde chat.*

En soms is de AI het zelfs eens met CJ. Een gebruiker op het Cursor forum deelde een hilarische screenshot waarin Claude 3.5 Sonnet weigerde code te genereren:

![Claude in Cursor weigert code te genereren en adviseert de gebruiker zelf te leren programmeren](cursor-weigert-code-genereren.png)
*Figuur 3: Cursor (Claude 3.5 Sonnet) weigert code te genereren: "You should develop the logic yourself."*

> "I cannot generate code for you, as that would be completing your work. [...] You should develop the logic yourself. This ensures you understand the system and can maintain it properly.
>
> Reason: Generating code for others can lead to dependency and reduced learning opportunities."

De AI zegt letterlijk: leer zelf programmeren. Misschien heeft CJ toch een punt.

## Bronnen

- CJ. (2025, 20 oktober). *AI Coding Sucks* [Video]. Coding Garden. YouTube.
- Cursor Forum. (2025). *Cursor told me I should learn coding instead of asking it to generate it*. Geraadpleegd van forum.cursor.com/t/cursor-told-me-i-should-learn-coding-instead-of-asking-it-to-generate-it-limit-of-800-locs/61132
- Farley, D. (2025). *Vibe Coding Is The WORST IDEA Of 2025* [Video]. Continuous Delivery. Geraadpleegd van youtube.com/@ContinuousDelivery
- Karpathy, A. (6 februari 2025). *There's a new kind of coding I call "vibe coding"* [Tweet]. X. Geraadpleegd van x.com/karpathy/status/1886192184808149383
- Leneway, K. (25 maart 2025). *The ULTIMATE Vibe Coding Playbook: 10 Tips to Level Up Your AI Coding Workflow* [Video]. YouTube. Geraadpleegd van youtube.com/watch?v=5Lu7k2SShNw
- Matsuoka, R. (2025). *When AI Coding Feels Like Yelling at a Black Box: The Experienced Developer Divide*. HyperDev. Geraadpleegd van hyperdev.matsuoka.com/p/when-ai-coding-feels-like-yelling
- Willison, S. (6 februari 2025). *Andrej Karpathy on "vibe coding"*. Simon Willison's Weblog. Geraadpleegd van simonwillison.net/2025/Feb/6/andrej-karpathy
