---
layout: post
title: "AI Coding Sucks - Of toch niet?"
date: 2024-12-23
lang: nl
tags: [ai, programmeren, tooling]
published: false
---

In oktober 2025 postte CJ van Coding Garden een 15-minuten durende rant genaamd "AI Coding Sucks". ThePrimeTime pikte het op, en de video ging viraal in de developer community. De frustratie resoneerde - maar is dit het hele verhaal?

## De kern van CJ's frustratie

CJ verwoordt wat veel developers voelen maar niet durven zeggen:

> "I used to enjoy programming. Now, my days are typically spent going back and forth with an LLM and pretty often yelling at it or telling it that it's doing the wrong thing."

Het gaat niet alleen om productiviteit. Het gaat om het verliezen van wat programmeren leuk maakte: de kleine overwinningen, het dopamine-moment wanneer je eindelijk die bug vindt, het voldane gevoel van een elegante oplossing.

## Non-determinisme: Het gebroken contract

Programmeren trok CJ aan omdat het voorspelbaar en logisch is. Je schrijft code, de computer voert uit, je krijgt een resultaat. Dezelfde input geeft dezelfde output.

AI breekt dit fundamentele contract. Dezelfde prompt geeft verschillende resultaten. Soms briljant, soms onbruikbaar. Je kunt niet bouwen op iets dat zich niet consistent gedraagt.

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

## De andere kant: Dan Seltzer's aanpak

Maar niet iedereen worstelt. Dan Seltzer behaalt consistente resultaten door de relatie fundamenteel te herdefiniëren: hij *dirigeert* AI development in plaats van te *pair-programmen*.

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

## Mijn eigen ervaring

Ik merk ook dat de neigin van LLM's om je naar de mond te praten; e.g. te bullshitten, zich bij Code-gerichte. AI's maken dezelfde code smells als programmeurs. Logisch want ze zijn ook getraind op open source/online codebases waarin deze smells ook zitten. Let wel: smells is niet helemaal hetzelfde als een fout. Het is een stukje wat de code minder onderhoudbaar maakt.

Ik heb zelf veel tools al gebruikt; begon met co-pilot, maar vooral veel ChatGPT. Die nu ook nog mijn plaatjes maakt. Maar je gaat dan wel HEEL VEEL heen en weer van je IDE/ontwikkelomgeving naar de browser. Dus nadat ik een podacat hoorde met de makers van Cursor, een Visual Studio Code fork, stapte ik over naar agentic AI. En toen deze op een gegeven moment heel snel begon te zeuren dat ik door mijn tokens heen was ben ik een keer overgestapt naar Anthropic's Claude waar een collega enthousiast was over hun CLI tool: Command Line Interface.

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

## Bronnen

- CJ. (2025, 20 oktober). *AI Coding Sucks* [Video]. Coding Garden. YouTube.
- Matsuoka, K. (2025). *When AI Coding Feels Like Yelling at a Black Box: The Experienced Developer Divide*. HyperDev. Geraadpleegd van hyperdev.matsuoka.com
