---
layout: post
title: "Nieuw ICT-onderwijs door AI (1/3)"
subtitle: "Bewustwording: De evolutie van AI-interactiemodi"
date_started: 2026-01-14
date: 2026-01-14
lang: nl
tags: [ai, llm, onderwijs, interactie, bewustwording, software-engineering]
img: posts/ai-interaction-modes.png
revisions:
  - date: 2026-01-21
    type: Gewijzigd
    note: "Plaatjes verplaatst naar blog 1 (Tiulkanov-flowchart als sectie 9) voor evenwichtige verdeling over drieluik en betere afstemming met BOB-model (Bewustwording-Oordeelsvorming-Besluitvorming)"
  - date: 2026-01-21
    type: Gewijzigd
    note: "Disambiguatie cursor gebruiker en Cursor gebruiker"
  - date: 2026-01-21
    type: Gewijzigd
    note: "Citatienormalisatie (Köppe et al.→Köppe); Beck bron toegevoegd; header-branding en trilogy-verbindingen afgewerkt"
---

In dit geplande drieluik verken ik hoe ICT-onderwijs moet veranderen met de komst van AI. Dit eerste deel gaat over **bewustwording**: begrijpen hoe AI-tools zijn geëvolueerd en wat dat betekent voor hoe we ermee interacteren.

**Drieluik structuur:** Dit artikel volgt het BOB-model (Bewustwording, Oordeelsvorming, Besluitvorming) — een model voor grote verandertrajecten (Schop, z.d.).

- **Blog 1/3 (Bewustwording)**: Opkomst AI en de evolutie van AI-interactiemodi (dit artikel)
- **Blog 2/3 (Oordeelsvorming)**: Taxonomie van AI-gebruik: wie heeft de regie?
- **Blog 3/3 (Besluitvorming)**: AI als leermiddel, niet als butler

In plaats van direct een beslissing te nemen, nemen we de tijd om eerst te begrijpen, dan te oordelen, en pas daarna te besluiten. Eenzelfde iets is overigens ook precies wat we studenten willen leren: niet meteen gaan coderen en een oplossing maken, maar eerst goed het probleem verkennen. Omdat je anders wellicht een oplossing voor een ander probleem maakt dan je opdrachtgever heeft. Of een probleem dat alleen in JOUW hoofd bestaat. You are not your user.

Want **do the right things**' is belangrijker dan '**doing things right**' (en je totale einddoel is natuurlijk: **Do the right things right**, als ICT-er, maar dat terzijde).

Deze serie bouwt voort op mijn eerdere blog ["AI Coding Sucks"](/ai-coding-sucks/). Daar beschreef ik de issues met Large Language Models die momenteel spelen binnen de developers community. Wat we binnen ICT onderwijs het 'werkveld' noemen. In dit drieluik kijk ik meer naar specifiek in het ICT onderwijs: Developers die het nog moeten leren. Nou moet je als software engineer altijd al bij blijven in een snel ontwikkelende wereld. Maar onze studenten moeten de basics nog leren. Maar niet alleen programmeer basics, ook andere zaken als domein verkennen, leren testen. De hoofdvraag is: hoe passen we ICT-onderwijs aan zodat studenten AI effectief én verantwoord leren gebruiken?

De structuur van deze blog: Sectie 1 geeft een korte startopmerking en bias-disclosure. Secties 2-4 leggen de interactiemodi uit (Conversational, Inline, Agentic). Secties 5-6 gaan over teaching practices en implicaties voor onderwijs. Sectie 7 behandelt het kernprobleem voor studenten: hoe verifieer je AI-output? (het expertise-verificatieprobleem via Tiulkanov). Sectie 8 sluit af met perspectief op de volgende blogs in het drieluik.

## 1. Over mijn bias plus: waarom dit zo publiek online?

Ik ben software engineer en docent. Dit betekent dat ik een bias zal hebben voor de insteek "software engineers zijn essentieel" ook in het AI tijdperk. Want als er geen nieuwe studenten komen, moet ik ook een nieuwe baan gaan zoeken. En zoals Upton Sinclair lang geleden schreef: *"It's hard to explain something to someone when their salary depends on them not understanding."* Fair warning.

Tegelijk: Eind december 2025 bleek dat zelfs Salesforce hun verwachtingen over generative AI moest bijstellen. Volgens een analyse van The Information (Holmes & McLaughlin, 2025):

> "Salesforce in recent months appears to have pulled back on how much its Agentforce-powered customer service agent uses LLMs."

Marc Benioff, CEO, erkende dat ze 4000 software engineers te snel hebben ontslagen omdat hun prognoses over wat AI zou kunnen doen te optimistisch waren. Dit suggereert dat software engineers nog steeds nodig zijn — en dat AI-vaardigheden leren geen luxe is, maar cruciaal.

Over openheid: ik publiceer deze beschouwing bewust op mijn persoonlijke blog in plaats van op LinkedIn. Het is een betere plek om werk-in-uitvoering te delen en veilig AI‑tools te gebruiken. Word‑documenten op SharePoint zijn voor mij, als developer, geen prettig of medium (en Copilot in Word is niet beschikbaar; maar goed ook). "Open source all the things!" All the things? Nee, niet all. Maar ik deel inzichten graag met andere hogescholen.

Uiteindelijk wordt ik ook betaald als docent met gemeenschaps geld; en in de geest van [Aaron Schwartz](https://nl.wikipedia.org/wiki/Aaron_Swartz); The Internet's own boy, wil ik dit niet voor mezelf houden
> "Information is power, but like all power there are those who want to keep it for themselves"

Met de revisie van ons functiehuis is mijn functie ook 'Docent Onderzoeker' geworden. Maar het 'onderzoeker' stuk laat qua urenruimte nog wat op zich wachten, gezien vele te geven lessen en onderwijsontwikkeling; dus ik neem graag een voorschot daarop. Er staan geen vertrouwelijke of geheime zaken in; hooguit persoonlijke noten over mijzelf. Maar wellicht heb ik ook een bias, of onvolledige blik. Dus vind je dat ik te veel disclose, laat het me weten — dan kies ik een ander medium of pas ik het aan. #embraceChange

## 2. De snelle komst van AI in onderwijs

November 2022: ChatGPT lanceert en bereikt binnen 5 dagen 1 miljoen gebruikers. Voor het onderwijs was dit ook een schok. Binnen weken leveren studenten AI-gegenereerde essays inleveren. De eerste reactie van veel onderwijsinstellingen: verbieden.

Maar verbieden werkt niet. AI is niet te detecteren met 100% zekerheid, en studenten gebruiken het toch. Je wilt liegen niet laten belonen. Bovendien: in het werkveld wordt AI-gebruik verwacht. Een student die niet leert omgaan met AI, loopt achter.

De vraag verschoof van "Moeten we AI toestaan?" naar "Hoe leren we studenten AI verantwoord te gebruiken?"

## 3. Waarom interactiemodi ertoe doen

De eerste generatie AI-tools (ChatGPT, eind 2022) was simpel: je typt een vraag, krijgt een antwoord. Copy-paste naar je editor. Dit noemen we **Conversational AI**.

Maar AI-tools evolueerden razendsnel:

- **2021-2022**: **GitHub Copilot** lanceert als eerste inline code completion tool (technical preview juni 2021, algemeen beschikbaar juni 2022) (Friedman, 2021)
- **2022**: ChatGPT lanceert (november 2022) — eerste mainstream conversational AI (OpenAI, 2022)
- **2023**: Opkomst agentic tools zoals **Cursor** met repository-wide context
- **2024**: Anthropic Computer Use (oktober) — AI die computers kan bedienen (Anthropic, 2024)
- **2025**: Claude Code lanceert met "multi-agent orchestration through the command line" (Matsuoka, 2026); GitHub Copilot Workspace voegt agentic features toe; DeepSeek als disruptieve low-cost speler
- **2026**: Toenemende druk op developers; "More than two-thirds of developers feel pressured to **deliver projects faster**. [...] Burnout has become a critical issue that will likely get worse." (Rafalski, 2026)

Deze evolutie verandert fundamenteel hoe we met AI werken. Het gaat niet alleen om *wat* de AI kan, maar om *hoe* we ermee interacteren. En die *hoe* bepaalt mede of we de controle houden of verliezen.

Voor onderwijs is dit cruciaal: studenten moeten begrijpen dat "AI gebruiken" niet één ding is. De interactiemodus bepaalt hoeveel context de AI heeft, hoeveel controle je behoudt, en hoeveel inspanning het kost.

## 4. Drie AI-interactiemodi

Dit onderscheid ontstond mede naar aanleiding van een gesprek met een collega die de verschillende interactietypes schetste. Hij merkte op dat hij — als ervaren programmeur — bij de overstap naar Agentic AI op een gegeven moment maar toestond dat de LLM vrij grote wijzigingen doorvoerde, omdat hij de vele changes ook niet meer kon overzien. Als zelfs experts dit overkomt, wat betekent dat dan voor studenten?

Recent onderzoek van Treude & Gerosa (2025) presenteert een uitgebreide taxonomie van 11 developer-AI interactietypes, waaronder auto-complete code suggestions, command-driven actions, conversational assistance, en comment-guided prompts.

![Het groeiend bereik van input (context) en output (scope) bij AI-interacties](/assets/img/posts/ai-interaction-modes-concentric.png)
*Figuur 1*: Het groeiend bereik van input (context) en output (scope) bij AI-interacties

Voor de huidige praktijk vereenvoudig ik dit op aangeven van collega tot deze **drie primaire interaction modes**. Deze vormen eigenlijk twee gerelateerde dimensies — niet drie onafhankelijke — en vormen dus eerder concentrische cirkels dan een orthogonale matrix (zie Figuur 1):

1. **Input Scope** (context bereik): Hoeveel van je project kan de AI zien?
   - **Beperkt**: Alleen wat je expliciet in de chat kopieert
   - **Lokaal**: Het huidige bestand en nabije bestanden
   - **Globaal**: Hele repository, git history, alle bestanden

2. **Output Scope** (schrijfbereik): Waar mag de AI wijzigingen aanbrengen?
   - **Geen**: De AI genereert, jij copy-past
   - **Inline**: Direct in je editor, maar alleen waar je cursor is
   - **Volledig**: Willekeurige bestanden, nieuwe files, commands, commits

Deze twee dimensies correleren sterk — meer input scope gaat gepaard met meer output scope, en omgekeerd — waardoor de drie types eigenlijk concentrische zones vormen: elke volgende modus omvat wat de vorige kan, maar met uitgebreider bereik (zie Figuur 1).

### 4.1 Conversational AI (ChatGPT-stijl)

**Input Scope: Beperkt** — Geen automatische context. Je moet handmatig alles meegeven — code snippets, error messages, documentatie. De AI heeft alleen toegang tot wat jij expliciet in het chatvenster plakt.

**Output Scope: Geen schrijfrechten** — De AI genereert output, jij copy-past het naar je editor.

Dit betekent veel heen-en-weer. Je stelt een vraag, krijgt een antwoord, copy-past code, test het, gaat terug naar de chat met een foutmelding, krijgt een fix, repeat. De context moet je handmatig meegeven.

### 4.2 Inline AI (Copilot-stijl)

**Input Scope: Lokaal** — Context = het huidige bestand waar je in werkt, plus mogelijk nabije bestanden. De AI ziet waar je cursor staat, wat je net hebt getypt, en suggereert de volgende regel.

**Output Scope: Beperkte schrijfrechten** — Tab-completion, inline suggestions, autocomplete. De AI schrijft direct in je editor, maar alleen op plaatsen waar jij expliciet om vraagt (door te typen of tab te drukken).

Dit geeft minimale interactie-inspanning. Je typt, drukt op tab, accepteert of verwerpt. De cyclus is kort en frequent.

Treude & Gerosa (2025) onderscheiden binnen code completion twee interessante subtypes:

- **Auto-complete based on typing**: De AI triggert automatisch op basis van typpatronen en presenteert "ghost text" suggesties.
- **Comment-guided prompts**: De developer schrijft een comment in natuurlijke taal (bijvoorbeeld `// Convert list of strings to uppercase`), en de AI genereert code die aansluit bij deze beschrijving. Ook het kiezen van een duidelijke functienaam werkt zo: je typt `function calculateTotalPrice(` en de AI vult de body in op basis van de naam.

Dit laatste is eigenlijk een hybride vorm: je gebruikt Inline AI (de suggestie verschijnt direct in je editor), maar de trigger is een gedetailleerde prompt via een comment of functienaam — wat lijkt op Conversational AI, maar dan embedded in code.

**Copilot: hybride vorm** — GitHub Copilot beslaat *beide* kanten: tab-completion (Inline AI) én een chatvenster (Conversational AI). Maar de tab-completion heeft beperkte context (huidige bestand + nabije bestanden), terwijl de chat geen schrijfrechten heeft. Copilot zit dus tussen Inline en Conversational in.

### 4.3 Agentic AI (Claude Code-stijl)

**Input Scope: Globaal** — Context = hele repository, alle bestanden, terminal output, git history, open issues. De AI kan zelf bestanden lezen, zoeken, en analyseren.

**Output Scope: Volledige schrijfrechten (na goedkeuring)** — De AI kan bestanden editen, nieuwe bestanden aanmaken, commando's uitvoeren, git commits maken — alles wat een mens ook kan, maar dan geautomatiseerd.

Dit geeft eenmalige opdracht met checkpoints. Je geeft een taak ("refactor deze module om dependency injection te gebruiken"), de AI werkt autonoom, toont je tussenstappen, en wacht op goedkeuring voordat het schrijft.

**Het voordeel: debugging en iteratie.**  Agentic AI is ontzettend handig voor debugging. Build mislukt? De AI voert het uit, ziet de error, fixt het, voert het opnieuw uit. Lint-warning? De AI ziet het, begrijpt het, lost het op. Syntaxfout? Weg. Pairwise parentheses-mismatch? Opgelost.

Dit is waar veel van de "vibe coding" voordelen inzitten: je hoeft niet meer handmatig syntax te checken, linting errors op te zoeken, of iteratief heen en weer te gaan met compile-feedback. Moderne developers — vooral jongere — kennen vaak de oude IDE-features niet eens meer: code folding, syntax highlighting voor specifieke problemen, parenmatching, real-time linting. Deze features *waren* nodig omdat debugging manueel was. Met Agentic AI wordt debugging *geautomatiseerd*.

Maar dit betekent niet dat "Vibe Coding" (Type 3 uit blog 2/3) opeens veilig wordt. Integendeel: je bent technical debt aan het opbouwen. De AI kan een kant op zijn gegaan die slecht uitpakt, en jij merkt het pas als het te laat is. De uitdaging blijft om te weten wanneer je kleinere stapjes moet zetten — specifiekere prompts geven dan de grote stap waar de AI de mist in ging.

En als je de AI aan het micro-managen bent, kun je het op een gegeven moment beter zelf doen. Dan stap je over naar Type 4 (Old Skool), of je gaat toch weer wat grotere stappen zetten, of meer stappen zonder tussentijds al te controleren. Het blijft balanceren.

**Voor studenten geldt dit nog sterker.** Het doel is niet alleen een werkend product, maar begrip opbouwen en kennis voor later. Je moet kunnen uitleggen wat je hebt gemaakt bij een mondeling assessment, en de achterliggende concepten begrijpen om goed te scoren bij een theorietoets. Een werkend product zonder begrip is voor een student waardeloos — je leert niets en zakt later alsnog.

**Het gevaar: willekeurige shell-commando's.** Maar deze kracht brengt ook risico's. Agentic AI mag niet alleen code schrijven, maar ook *willekeurige commando's uitvoeren*: builds starten, output pipen, curl-requests doen naar het internet, databases queryën, zelfs productie-omgevingen aanraken. Dit opent een reeks van veiligheidsrisico's.

Theoretische scenario's uit AI safety-onderzoek (zelfreplikatie, deceptief gedrag) zijn nog toekomstmuziek voor huidge tools — maar de onderliggende mechanismen zijn sneller dichterbij gekomen dan gedacht. Lees meer hierover in mijn blog [„AI Safety en Alignment: Skynet zonder Terminators"](/ai-safety-alignment/). Voor huidge Agentic AI geldt: *praktische* risico's zijn echt. Als een kwaadwillende externe of interne medewerkerschemaat de prompts van een Agentic AI kan injecteren, kan het systeem veel schade aanrichten. Dit is geen AI-issue, maar een klassiek beveiligingsprobleem: het oppervlak voor aanvallen is groter geworden omdat de tool meer kan. Daarom: approval voor elk commando.

De twee dimensies (input scope, output scope) bepalen samen waar een tool op het spectrum zit. Ze vormen concentrische zones, niet orthogonale assen.

### 4.4 De drie types in perspectief

![Overzicht van de drie AI-interactiemodi](/assets/img/posts/ai-interaction-modes.png)
*Figuur 2*: Overzicht van de drie AI-interactiemodi.

**Samenvatting:**

| Type | Input Scope | Output Scope | Typische Tools |
| --- | --- | --- | --- |
| **Conversational** | Wat je kopieert | Geen (output only) | ChatGPT, Claude via Web |
| **Inline** | Huidig bestand + nabij | Context rondom cursor van gebruiker | GitHub Copilot, VS Code Copilot |
| **Agentic** | Hele repo + context | Volledige project | Claude Code, Cursor, IDE agents |

**Opmerking over naamgeving:** In de Inline rij staat "cursor van gebruiker" — dit verwijst naar de *tekstcursor* (waar je typt), niet naar de AI-tool Cursor. Die tool staat in de Agentic rij. De 'cursor gebruiker' is iets anders dan een 'Cursor gebruiker' als je begrijpt wat ik bedoel. Programmeurs zijn al gewend aan dat hoofdletter gebruik uitmaakt in betekenis/correctheid. Ook GitHub Copilot heeft sinds 2025 agentic features (Copilot Workspace), dus de grenzen vervagen.

Deze categorisering helpt developers (en docenten en studenten) begrijpen dat er verschillende soorten AI-tools zijn. De UI en workflow van deze tools is weer iets anders dan hoe een developer AI precies *gebruikt* — daarover gaat de volgende blog.

In blog 2/3 introduceer ik een taxonomie van AI-**gebruikstypes**: Human in the Lead, Human Curates, AI in the Lead, en Old Skool. Deze gaan over *wie* de regie heeft en hoe deze gebruikstypes correleren met de interactiemodi uit deze blog.

## 5. Teaching practices voor GenAI (vooruitblik)

Onderzoekers van de Universiteit Utrecht hebben een systematische review gedaan naar hoe GenAI in computing-onderwijs wordt ingezet (Köppe, 2025). Zij onderscheiden vier categorieën van *teaching practices*:

1. **Studenten gebruiken GenAI voor leermateriaal**: conceptuitleg, voorbeeldoplossingen genereren, code-review door AI
2. **Studenten gebruiken GenAI voor foutoplossing**: error messages uitleg, debugging hulp
3. **Studenten gebruiken GenAI voor co-creatie**: samen coderen, specificatie-naar-code gesprekken, refactoring
4. **Assessment ondersteuning**: beoordeling van promptkwaliteit, analyse van AI-gegenereerde code, reflectie op GenAI-gebruik

Dit sluit aan bij de interactiemodi uit deze blog, maar voegt een didactische laag toe: *wat leren studenten* bij elke vorm van AI-gebruik? In blog 3/3 kom ik hierop terug met concrete richtlijnen voor wanneer welke practice geschikt is voor verschillende niveaus studenten.

## 6. Implicaties voor onderwijs

Voor studenten is deze evolutie zowel kans als risico:

**Kans**: AI-tools worden krachtiger en toegankelijker. Studenten kunnen sneller prototypen, experimenteren, en leren van voorbeelden.

**Risico**: Hoe krachtiger de tool, hoe gemakkelijker het is om controle te verliezen. Een student die Agentic AI gebruikt zonder te begrijpen wat het doet, leert niets. De AI schrijft code die de student niet kan verifiëren, debuggen, of uitbreiden.

Dit is waarom bewustwording essentieel is. Studenten moeten begrijpen:

1. **Welke interactiemodus ze gebruiken**: Conversational, Inline, of Agentic?
2. **Wat de trade-offs zijn**: Meer context en schrijfrechten = meer risico op blind vertrouwen
3. **Wanneer welke modus geschikt is**: Begin met Conversational (volledige controle), pas later Inline/Agentic toe als je de basis beheerst

In blog 3/3 ga ik dieper in op wanneer het veilig is voor studenten om welke modus te gebruiken.

*Praktisch voorbeeld*: In mijn blog [„Testing the AI"](/testing-the-llm/) beschrijf ik op n=1 manier een fascinerend verschijnsel: ik leek iets van "Theory of Mind" bij AI waar te nemen — op humoristische wijze, maar toch interessant. Het illustreert hoe Agentic AI kan "redeneren" over wat jij wilt op basis van context, wat zowel handig als onverwacht kan zijn.

## 7. Het expertise-verificatieprobleem: Tiulkanov's flowchart

In sectie 4.3 zagen we dat agentic AI zonder expliciete goedkeuring per actie gevaarlijk kan zijn. Maar dit probleem begint al veel eerder: wanneer een student überhaupt mag beslissen om AI te gebruiken.

De kern is dit: **hoe weet je of AI-output correct is?** Dit vereist expertise om te verifiëren. En daar zit het probleem voor studenten — zij missen deze expertise nog.

Ervaren ontwikkelaars zien in één oogopslag of gegenereerde code klopt. Zij hebben hun "bullshit detector" aangescherpt door jaren van fouten maken, debuggen, en code reviews. Een junior accepteert misschien een verouderd pattern; een senior herkent het direct als tech debt.

Studenten missen deze detector volledig. Het AI-model antwoordt met vertrouwen — maar dat betekent niet dat het klopt.

![Flowchart: Wanneer is het veilig om ChatGPT te gebruiken?](/assets/img/prompt-engineering/chatgpt-comic-safety.jpg)
*Figuur 3*: Flowchart: Wanneer is het veilig om ChatGPT te gebruiken?

Aleksandr Tiulkanov maakte in 2023 al deze flowchart (Figuur 3), die op social veelal als humor/meme werd gedeeld. Maar eigenlijk laat dit heel effectief het kernprobleem zien. De beslissende vraag: **"Do you have expertise to verify that the output is accurate?"** Voor studenten is het antwoord meestal "NO" — wat leidt naar "Unsafe to use ChatGPT".

Dit illustreert waarom bewustwording essentieel is. Je moet niet alleen begrijpen hoe interactiemodi werken (sectie 3), maar ook realistisch inschatten: *heb ik genoeg expertise om dit zelf te beoordelen?*

UNESCO erkent dat AI-geletterdheid steeds belangrijker wordt als competentie voor de toekomst (Unesco instituut voor educatie (IESALC), 2023). Maar hun competency frameworks richten zich breed op alle vakgebieden. Voor ICT/software engineering hebben we specifieker onderzoek nodig. Kent Beck (2025) vat de uitdaging samen: *"90% of my skills just went to zero dollars and 10% of my skills just went up 1000x"* De hamvraag voor educatie: **welke 10% moeten we aanleren aan studenten zodat zij AI veilig én productief kunnen gebruiken?** (Beck gaf ook aan dat hij (nog) niet wist WELKE 10%).

## 8. Tot slot: Naar oordeelsvorming

Nu we begrijpen hoe AI-interactiemodi zijn geëvolueerd en wat de trade-offs zijn, kunnen we in blog 2/3 een taxonomie opbouwen van verschillende **gebruikstypes**: wie heeft de regie, en waarom maakt dat uit?

Bewustwording is de eerste stap. De volgende stap is oordeelsvorming: leren onderscheiden tussen verantwoord en onverantwoord AI-gebruik.

**Volgt:** ICT-onderwijs aanpassen voor AI (2/3): Oordeelsvorming — Taxonomie van AI-gebruik: wie heeft de regie?

<details>

<summary markdown="span">Samenvatting: Antwoorden op BOB-vragen 'Bewustwording'
</summary>

![BOB-model als trechter (Schop, z.d.).](/assets/img/posts/bob-model-funnel.png)
*Figuur 4*: BOB-model als trechter (Schop, z.d.).

| Vraag | Beantwoording in deze blog |
| ----- | -------------------------- |
| **1. Wat weten we?** | AI (LLM's, sinds ChatGPT nov 2022) zorgt voor onrust in onderwijs en maatschappij. Er is twijfel bij studenten en ouders, en noodzaak voor docenten om AI te begrijpen. → Sectie 1 |
| **2. Klopt alles wat we weten?** | SE skills blijven nodig, maar de aard verandert: meer "engineering", minder "coding". AI kan bepaalde taken, maar studenten moeten de basis ook leren. → Sectie 2 |
| **3. Wat weten we niet?** | We weten niet wat de langere termijn toekomst brengt, of AGI komt, en hoe goed of slecht AI is voor development/engineering. → Sectie 4.3 (AI safety risico's) |
| **4. Hebben we die info nodig voor een besluit?** | Nee, met AGI is er potentieel sowieso een heel andere wereld. Huidige tendens: AI is wat overhyped n.a.v. ChatGPT/LLM's (maar toch krachtig). We moeten nu handelen met wat we weten. → Sectie 8 |
| **5. Hoe verzamelen we ontbrekende info?** | Door interactiemodi te begrijpen (deze blog), gebruikstypes te onderscheiden (blog 2/3), en teaching practices te evalueren (sectie 5). |

</details>

## Bronnen

- Anthropic. (22 oktober 2024). *Introducing computer use, a new Claude 3.5 Sonnet, and Claude 3.5 Haiku*. Geraadpleegd op 21 januari 2026 van https://www.anthropic.com/news/3-5-models-and-computer-use
- Anthropic. (2025). *Claude Code Sandboxing*. Geraadpleegd op 20 januari 2026 van https://docs.anthropic.com/en/docs/claude-code/sandboxing
- CJ. (21 oktober 2025). *AI Coding Sucks* [Video]. Coding Garden. Geraadpleegd op 23 december 2024 van https://www.youtube.com/watch?v=sEcdX0_r-5Y
- Friedman, N. (29 juni 2021). *Introducing GitHub Copilot: your AI pair programmer*. GitHub Blog. Geraadpleegd op 21 januari 2026 van https://github.blog/2021-06-29-introducing-github-copilot-ai-pair-programmer/
- GitHub. (21 juni 2022). *GitHub Copilot is generally available to all developers*. GitHub Blog. Geraadpleegd op 21 januari 2026 van https://github.blog/2022-06-21-github-copilot-is-generally-available-to-all-developers/
- Holmes, A., & McLaughlin, K. (19 december 2025). *Salesforce Pulls Back on Agentforce LLM Usage*. The Information. Geraadpleegd op 21 januari 2026 van https://archive.is/oi302
- Köppe, C., Keuning, H., Lykourentzou, I., Alpizar Chacon, I., & Sosnovsky, S. (2025). *Practices for the Application of Generative AI in Programming Education*. Universiteit Utrecht. Geraadpleegd op 15 januari 2026 van https://www.uu.nl/en/research/generative-ai-for-computing-education/materials-for-teachers/teaching-practices
- Matsuoka, R. (6 januari 2026). *The Age of the CLI, Part 1: Engineers Are Catching On*. Hyperdev. Geraadpleegd op 21 januari 2026 van https://hyperdev.matsuoka.com/p/the-age-of-the-cli-part-1
- OpenAI. (30 november 2022). *Introducing ChatGPT*. Geraadpleegd op 21 januari 2026 van https://openai.com/blog/chatgpt
- Rafalski, K. (19 januari 2026). *Critical Software Development Industry Challenges to Watch in 2026*. Netguru. Geraadpleegd op 21 januari 2026 van https://www.netguru.com/blog/software-development-industry-challenges
- Schop, G. J. (z.d.). *BOB-model*. Managementmodellensite. Geraadpleegd op 20 januari 2026 van https://managementmodellensite.nl/bob-model/
- Tiulkanov, A. (19 januari 2023). *Is it safe to use ChatGPT for your task?* [Flowchart]. Geraadpleegd op 21 januari 2026 van https://tiulkanov.info
- Treude, C., & Gerosa, M. A. (15 januari 2025). *How Developers Interact with AI: A Taxonomy of Human-AI Collaboration in Software Engineering*. arXiv. Geraadpleegd op 13 januari 2026 van https://arxiv.org/html/2501.08774v1
- Unesco instituut voor educatie (IESALC). (2023). *Guidelines for UNESCO's work on Artificial Intelligence in Education*. Geraadpleegd op 21 januari 2026 van https://www.unesco.org/en/articles/ai-guidelines-education
