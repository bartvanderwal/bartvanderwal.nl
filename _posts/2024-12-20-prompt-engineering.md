---
layout: post
title: "Prompt Engineering"
subtitle: "De kunst van het vragen aan AI"
date: 2024-12-20
date_started: 2024-12-20
lang: nl
tags: [ai, prompting]
img: prompt-engineering/chatgpt-comic-safety.jpg
draft: true
---

In dit artikel verkennen we prompt engineering: de kunst van het effectief communiceren met AI-taalmodellen. Dit is een bewerking van een eerdere [workshop op minordevops.nl](https://minordevops.nl/devops-overig/workshop-prompt-engineering.html), omgezet naar artikel format en uitgebreid met actuele inzichten.

## Over ChatGPT en het risico van zelfvertrouwen

ChatGPT is een krachtige "creatieve technologie" — een AI met enorme hoeveelheden kennis, waarschijnlijk meer dan enig mens ooit gehad heeft (Musk, 2023). Het antwoordt snel en often articulate op bijna elke vraag. Maar dit is ook het gevaar: ChatGPT kan "confidently wrong" zijn — vol vertrouwen antwoorden geven die niet kloppen (Musk, 2023).

Wat schrijftempo betreft scoort ChatGPT al snel een 7-8 uit 10 — technisch gezien zijn de outputs foutloos qua spelling en stijl. Maar inhoudelijk kan ChatGPT gewoon dingen verzinnen. Dit fenomeen noemen we "hallucination": het model produceert vertrouwen incorrecte informatie die plausibel klinkt.

![ChatGPT als bullshitter](/assets/img/prompt-engineering/chat-gpt-the-bullshitter.jpg)
*Figuur 1*: ChatGPT als bullshitter — geen tijdbespaarder, maar normverhoger?

Edsger Dijkstra schreef al decennium geleden waarschuwend over dit soort problemen: *"some still seem to equate 'the ease of programming' with the ease of making undetected mistakes"* (Dijkstra, 1979). Dit is precies wat er nu gebeurt met AI: de ease of use betekent niet dat je kan vertrouwen op correctheid.

## Waarom ChatGPT gevaarlijk kan zijn

Voor ervaren ontwikkelaars is dit minder problematisch. Zij hebben hun "bullshit detector" aangescherpt door jaren van fouten maken, debuggen en code reviews. Een junior accepteert misschien een verouderd pattern; een senior herkent het direct.

Maar studenten missen deze detector volledig. ChatGPT antwoordt met vertrouwen, en dat wordt vaak gelijk gesteld aan correctheid.

![Flowchart: Wanneer is het veilig om ChatGPT te gebruiken?](/assets/img/prompt-engineering/chatgpt-comic-safety.jpg)
*Figuur 2*: Flowchart: Wanneer is het veilig om ChatGPT te gebruiken? (Tiulkanov, 2023)

De flowchart van Aleksandr Tiulkanov (researcher in AI & Digital Policy) maakt dit helder. De beslissende vraag: *"Do you have expertise to verify that the output is accurate?"* Voor studenten is het antwoord meestal "NO" — wat leidt naar "Unsafe to use ChatGPT". Dit illustreert waarom bewustwording essentieel is: je moet realistisch inschatten of je genoeg expertise hebt om AI-output zelf te beoordelen.

## Prompt Engineering: strategisch vragen stellen

*"Eén prompt is geen prompt"* — dit adagium onderstreept dat iteratieve verfijning cruciaal is. Het vragen aan ChatGPT is een vaardigheid die je moet trainen.

Allereerst: hallucinaties reduceren door ChatGPT expliciet instructie te geven:
> Lieg niet! Als iets niet zeker is, zet dit er dan bij, of laat feiten geheel weg als ze erg onzeker zijn of niet kloppen.

Dit geeft geen garanties, maar ChatGPT neemt het wel mee.

### Technisch schrijven: grammatica en adjectieven

Bij technische documentatie moet je voorkomen dat je tekst als marketing klinkt. Google Technical Writing adviseert (Google, z.d.):
> "...adjectives and adverbs can make technical documentation sound dangerously like marketing material."

ChatGPT heeft de neiging overdrijvingen in de tekst op te nemen. Voorbeelden van problematische formuleringen:

- "deze essentiële tool ..."
- "dit is voor DevOps-ontwikkelaars absoluut onmisbaar"
- "tool X fungeert als cruciale pijler"
- "van vitaal belang"

Deze toon is niet acceptabel in objectieve schrijven. Laat ChatGPT dit omschrijven. Alleen als je na onderzoek tot de conclusie komt dat claims inderdaad gegrond zijn, mag je dit benoemen in je conclusie — maar niet in je inleiding.

## ChatGPT voor onderzoek en documentatie

ChatGPT is bruikbaar voor specifieke taken:

- **Introducties**: Met goede signposting (kopjes, overzichten)
- **Samenvattingen**: Management summaries zijn redelijk goed
- **Discussies**: Kan aanzet geven voor frameworks
- **Hypotheses**: Kan helpen bij formulering

Maar alles vereist kritische review. Vooral moet je checken:

- Of de inhoud klopt (feitenchecken!)
- Of geen hoofdlijnen missen
- Of ChatGPT niet "wollig" is gaan schrijven zonder waarde toe te voegen

![3HOOG comic over ChatGPT](/assets/img/prompt-engineering/chat-gpt-3hoog-comic.jpg)
*Figuur 3*: 3HOOG: ChatGPT (Driessen, 2023)

Opmerking: conclusies mogen geen *nieuwe* informatie bevatten (Scribbr, 2022). Dit is een klassieker dat veel studenten missen.

## De toekomst

AI biedt significant potentieel maar presenteert echte risico's. Blanco verbod is contraproductief — er is zelfs argument te maken dat het onethisch is AI niet te gebruiken gezien de grote uitdagingen waar onze samenleving voor staat. Maar we moeten zorgen dat AI ge-aligned blijft.

![De toekomst van AI](/assets/img/prompt-engineering/ai-future.png)
*Figuur 4*: De toekomst van AI? (CommitStrip, 2016)

---

## Bronnen

CommitStrip. (2016, april). *Meanwhile in a parallel universe*. Geraadpleegd op 15 januari 2026, van https://www.commitstrip.com/en/2016/04/14/meanwhile-in-a-parallel-universe-3/

Dijkstra, E. (1979). *On the foolishness of "natural language programming"*. Geraadpleegd op 15 januari 2026, van https://www.cs.utexas.edu/users/EWD/transcriptions/EWD06xx/EWD667.html

Driessen, Y. (2023, februari). *3 Hoog achter: ChatGPT*. Geraadpleegd op 15 januari 2026, van https://sam.han.nl/achtergrond/strip/3hoog-chatgpt/

Fridman, L. (Gastheer). (2023, november 10). *Elon Musk: War, AI, Aliens, Politics, Physics, Video Games, and Humanity (Nr. 400)* [Podcast aflevering]. In *Lex Fridman Podcast*. Geraadpleegd van https://lexfridman.com/elon-musk-4-transcript/

Google. (z.d.). *Technical writing*. Geraadpleegd op 15 januari 2026, van https://developers.google.com/tech-writing/one/clear-sentences

Scribbr. (2022, december 15). *Zo schrijf je een perfecte conclusie voor je scriptie*. Geraadpleegd op 15 januari 2026, van https://www.scribbr.nl/scriptie-structuur/conclusie-scriptie/

Tiulkanov, A. (2023). *[Flowchart: When is it safe to use ChatGPT?]*. Geraadpleegd op 15 januari 2026, van https://twitter.com/shadbush/status/1616007675145240576

---

*Dit artikel is een bewerking van een eerdere [workshop "Prompt Engineering" op minordevops.nl](https://minordevops.nl/devops-overig/workshop-prompt-engineering.html). De oorspronkelijke workshop behandelde hetzelfde onderwerp in meer instructief/stappenplan format gericht op HBO-i studenten. Deze versie focust op conceptueel begrip en is geschreven in artikel/essay format.*
