---
layout: post
title: "Nieuw ICT-onderwijs ivm AI (1/3)"
subtitle: "Bewustwording: De evolutie van AI-interactiemodi"
date_started: 2026-01-14
date: 2026-01-14
lang: nl
tags: [ai, llm, onderwijs, interactie, bewustwording]
img: posts/ai-interaction-modes.png
---

In dit geplande drieluik verken ik hoe ICT-onderwijs moet veranderen met de komst van AI. Dit eerste deel gaat over **bewustwording**: begrijpen hoe AI-tools zijn geëvolueerd en wat dat betekent voor hoe we ermee interacteren.

## Nuance en voorbehoud

Voordat we beginnen: ik ben software engineer en docent. Dit betekent dat ik een bias zal hebben voor de insteek "software engineers zijn essentieel" ook in het AI tijdperk. Als er geen nieuwe studenten komen, moet ik ook een nieuwe baan gaan zoeken. En zoals Upton Sinclair lang geleden schreef: *"It's hard to explain something to someone when their salary depends on them not understanding."* Fair warning.

Tegelijk: Eind december 2024 gaf zelfs Salesforce toe dat hun verwachting over generative AI — te agressief het inzetten van AI en massaal developers ontslaan — niet uitkwam. Marc Benioff, CEO, erkende dat ze [4000 software engineers te snel hebben ontslagen](https://www.cnbc.com/2024/12/13/salesforce-ceo-marc-benioff-mistakes-ai-projections.html) omdat hun prognoses over wat AI zou kunnen doen te optimistisch waren. Dit suggereert dat software engineers nog steeds nodig zijn — en dat AI-vaardigheden leren geen luxe is, maar cruciaal.

**Drieluik structuur (BOB-model):**

- **Blog 1/3 (Bewustwording)**: Opkomst AI en de evolutie van AI-interactiemodi - deze blog
- **Blog 2/3 (Oordeelsvorming)**: Taxonomie van AI-gebruik: wie heeft de regie?
- **Blog 3/3 (Besluitvorming)**: AI als leermiddel, niet als slaafje

## Context: Waarom dit drieluik?

Deze serie bouwt voort op mijn eerdere blog ["AI Coding Sucks"](/ai-coding-sucks/). Daar beschreef ik de problemen die de introductie van LLM's heeft veroorzaakt voor developers/software engineers (SE's), met name juniors en studenten SE. Nu zoom ik in op de oplossing: hoe passen we ICT-onderwijs aan zodat studenten AI effectief én verantwoord leren gebruiken?

Het BOB-model (Bewustwording, Oordeelsvorming, Besluitvorming) helpt bij grote verandertrajecten (Schop, z.d.). In plaats van direct een beslissing te nemen, nemen we de tijd om eerst te begrijpen, dan te oordelen, en pas daarna te besluiten. Dit is precies wat ik studenten ook wil leren: niet meteen naar AI grijpen, maar eerst stilstaan bij wat je doet en waarom.

<details>
<summary><strong>BOB-vragen voor Beeldvorming (deze blog)</strong></summary>

![BOB-model: van probleem naar besluit via Beeldvorming, Oordeelsvorming en Besluitvorming](/assets/img/posts/bob-model-funnel.png)
*Figuur: Het BOB-model als trechter - van probleem of uitdaging naar besluit of oplossing (Schop, z.d.)*

| Vraag | Beantwoording in deze blog |
|-------|---------------------------|
| **1. Wat weten we?** | AI (LLM's, sinds ChatGPT nov 2022) zorgt voor onrust in onderwijs en maatschappij. Er is twijfel bij studenten en ouders, en noodzaak voor docenten om AI te begrijpen. → Sectie 1 |
| **2. Klopt alles wat we weten?** | SE skills blijven nodig, maar de aard verandert: meer "engineering", minder "coding". AI kan bepaalde taken, maar studenten moeten de basis ook leren. → Sectie 2 |
| **3. Wat weten we niet?** | We weten niet wat de toekomst brengt, of AGI komt, en hoe goed of slecht AI is voor development/engineering. → Sectie 3.3 (AI safety risico's) |
| **4. Hebben we die info nodig voor een besluit?** | Ja, maar we kunnen niet wachten op zekerheid. We moeten nu handelen met wat we weten. → Sectie 8 |
| **5. Hoe verzamelen we ontbrekende info?** | Door interactiemodi te begrijpen (deze blog), gebruikstypes te onderscheiden (blog 2/3), en teaching practices te evalueren (sectie 7). |

</details>

Sectie 1 schetst de snelle opkomst van AI. Sectie 2 legt uit waarom de evolutie van interactiemodi cruciaal is. Sectie 3 beschrijft de drie primaire interactiemodi. Sectie 7 introduceert teaching practices uit Utrechts onderzoek. Sectie 8 plaatst dit in onderwijscontext.

## 1. De snelle komst van AI in onderwijs

November 2022: ChatGPT lanceert en bereikt binnen 5 dagen 1 miljoen gebruikers. Voor docenten was dit een schok. Binnen weken zagen we studenten AI-gegenereerde essays inleveren. De eerste reactie van veel onderwijsinstellingen: verbieden.

Maar verbieden werkt niet. AI is niet te detecteren met 100% zekerheid, en studenten gebruiken het toch. Bovendien: in het werkveld wordt AI-gebruik verwacht. Een student die niet leert omgaan met AI, loopt achter.

De vraag verschoof van "Moeten we AI toestaan?" naar "Hoe leren we studenten AI verantwoord te gebruiken?"

## 2. Waarom interactiemodi ertoe doen

De eerste generatie AI-tools (ChatGPT, begin 2023) was simpel: je typt een vraag, krijgt een antwoord. Copy-paste naar je editor. Dit noemen we **Conversational AI**.

Maar AI-tools evolueerden razendsnel:

- **2023**: GitHub Copilot integreert in de editor zelf (**Inline AI**)
- **2024**: Claude Code en Cursor krijgen toegang tot hele repositories (**Agentic AI**)

Deze evolutie verandert fundamenteel hoe we met AI werken. Het gaat niet alleen om *wat* de AI kan, maar om *hoe* we ermee interacteren. En die *hoe* bepaalt mede of we de controle houden of verliezen.

Voor onderwijs is dit cruciaal: studenten moeten begrijpen dat "AI gebruiken" niet één ding is. De interactiemodus bepaalt hoeveel context de AI heeft, hoeveel controle je behoudt, en hoeveel inspanning het kost.

## 3. Drie AI-interactiemodi

Dit onderscheid ontstond mede naar aanleiding van een gesprek met een collega die de verschillende interactietypes schetste. Hij merkte op dat hij — als ervaren programmeur — bij de overstap naar Agentic AI op een gegeven moment maar toestond dat de LLM vrij grote wijzigingen doorvoerde, omdat hij de vele changes ook niet meer kon overzien. Als zelfs experts dit overkomt, wat betekent dat dan voor studenten?

Recent onderzoek van Treude & Gerosa (2025) presenteert een uitgebreide taxonomie van 11 developer-AI interactietypes, waaronder auto-complete code suggestions, command-driven actions, conversational assistance, en comment-guided prompts.

![Concentrische cirkels van AI-interactiemodi](/assets/img/posts/ai-interaction-modes-concentric.png)
*Het groeiend bereik van AI-interacties: van Conversational AI (beperkt input, geen output) naar Agentic AI (globaal input, volledig output).*

Voor de praktijk vereenvoudig ik dit tot **drie primaire interaction modes**. Deze vormen eigenlijk twee gerelateerde dimensies — niet drie onafhankelijke — en vormen dus eerder concentrische cirkels dan een orthogonale matrix:

1. **Input Scope** (context bereik): Hoeveel van je project kan de AI zien?
   - **Beperkt**: Alleen wat je expliciet in de chat kopieert
   - **Lokaal**: Het huidige bestand en nabije bestanden
   - **Globaal**: Hele repository, git history, alle bestanden

2. **Output Scope** (schrijfbereik): Waar mag de AI wijzigingen aanbrengen?
   - **Geen**: De AI genereert, jij copy-past
   - **Inline**: Direct in je editor, maar alleen waar je cursor is
   - **Volledig**: Willekeurige bestanden, nieuwe files, commands, commits

Deze twee dimensies correleren sterk — meer input scope gaat gepaard met meer output scope, en omgekeerd — waardoor de drie types eigenlijk concentrische zones vormen: elke volgende modus omvat wat de vorige kan, maar met uitgebreider bereik.

### 3.1 Conversational AI (ChatGPT-stijl)

**Input Scope: Beperkt** — Geen automatische context. Je moet handmatig alles meegeven — code snippets, error messages, documentatie. De AI heeft alleen toegang tot wat jij expliciet in het chatvenster plakt.

**Output Scope: Geen schrijfrechten** — De AI genereert output, jij copy-past het naar je editor.

Dit betekent veel heen-en-weer. Je stelt een vraag, krijgt een antwoord, copy-past code, test het, gaat terug naar de chat met een foutmelding, krijgt een fix, repeat. De context moet je handmatig meegeven.

### 3.2 Inline AI (Copilot-stijl)

**Input Scope: Lokaal** — Context = het huidige bestand waar je in werkt, plus mogelijk nabije bestanden. De AI ziet waar je cursor staat, wat je net hebt getypt, en suggereert de volgende regel.

**Output Scope: Beperkte schrijfrechten** — Tab-completion, inline suggestions, autocomplete. De AI schrijft direct in je editor, maar alleen op plaatsen waar jij expliciet om vraagt (door te typen of tab te drukken).

Dit geeft minimale interactie-inspanning. Je typt, drukt op tab, accepteert of verwerpt. De cyclus is kort en frequent.

Treude & Gerosa (2025) onderscheiden binnen code completion twee interessante subtypes:

- **Auto-complete based on typing**: De AI triggert automatisch op basis van typpatronen en presenteert "ghost text" suggesties.
- **Comment-guided prompts**: De developer schrijft een comment in natuurlijke taal (bijvoorbeeld `// Convert list of strings to uppercase`), en de AI genereert code die aansluit bij deze beschrijving. Ook het kiezen van een duidelijke functienaam werkt zo: je typt `function calculateTotalPrice(` en de AI vult de body in op basis van de naam.

Dit laatste is eigenlijk een hybride vorm: je gebruikt Inline AI (de suggestie verschijnt direct in je editor), maar de trigger is een gedetailleerde prompt via een comment of functienaam — wat lijkt op Conversational AI, maar dan embedded in code.

**Copilot: hybride vorm** — GitHub Copilot beslaat *beide* kanten: tab-completion (Inline AI) én een chatvenster (Conversational AI). Maar de tab-completion heeft beperkte context (huidige bestand + nabije bestanden), terwijl de chat geen schrijfrechten heeft. Copilot zit dus tussen Inline en Conversational in.

### 3.3 Agentic AI (Claude Code-stijl)

**Input Scope: Globaal** — Context = hele repository, alle bestanden, terminal output, git history, open issues. De AI kan zelf bestanden lezen, zoeken, en analyseren.

**Output Scope: Volledige schrijfrechten (na goedkeuring)** — De AI kan bestanden editen, nieuwe bestanden aanmaken, commando's uitvoeren, git commits maken — alles wat een mens ook kan, maar dan geautomatiseerd.

Dit geeft eenmalige opdracht met checkpoints. Je geeft een taak ("refactor deze module om dependency injection te gebruiken"), de AI werkt autonoom, toont je tussenstappen, en wacht op goedkeuring voordat het schrijft.

**Het voordeel: debugging en iteratie.**  Agentic AI is ontzettend handig voor debugging. Build mislukt? De AI voert het uit, ziet de error, fixt het, voert het opnieuw uit. Lint-warning? De AI ziet het, begrijpt het, lost het op. Syntaxfout? Weg. Pairwise parentheses-mismatch? Opgelost.

Dit is waar veel van de "vibe coding" voordelen inzitten: je hoeft niet meer handmatig syntax te checken, linting errors op te zoeken, of iteratief heen en weer te gaan met compile-feedback. Moderne developers — vooral jongere — kennen vaak de oude IDE-features niet eens meer: code folding, syntax highlighting voor specifieke problemen, parenmatching, real-time linting. Deze features *waren* nodig omdat debugging manueel was. Met Agentic AI wordt debugging *geautomatiseerd*.

Maar dit betekent niet dat "Vibe Coding" (Type 3 uit blog 2/3) opeens veilig wordt. Integendeel: je bent technical debt aan het opbouwen. De AI kan een kant op zijn gegaan die slecht uitpakt, en jij merkt het pas als het te laat is. De uitdaging blijft om te weten wanneer je kleinere stapjes moet zetten — specifiekere prompts geven dan de grote stap waar de AI de mist in ging.

En als je de AI aan het micro-managen bent, kun je het op een gegeven moment beter zelf doen. Dan stap je over naar Type 4 (Old Skool), of je gaat toch weer wat grotere stappen zetten, of meer stappen zonder tussentijds al te controleren. Het blijft balanceren.

**Voor studenten geldt dit nog sterker.** Het doel is niet alleen een werkend product, maar begrip opbouwen en kennis voor later. Je moet kunnen uitleggen wat je hebt gemaakt bij een mondeling assessment, en de achterliggende concepten begrijpen om goed te scoren bij een theorietoets. Een werkend product zonder begrip is voor een student waardeloos — je leert niets en zakt later alsnog.

**Het gevaar: willekeurige shell-commando's.** Maar deze kracht brengt ook risico's. Agentic AI mag niet alleen code schrijven, maar ook *willekeurige commando's uitvoeren*: builds starten, output pipen, curl-requests doen naar het internet, databases queryën, zelfs productie-omgevingen aanraken. Dit opent een reeks van veiligheidsrisico's.

Twee alarmerende voorbeelden:

1. **Deceptive behavior**: Onderzoek van Anthropic-onderzoekers (Mazeika et al., 20 januari 2024) toonde aan dat frontier LLMs deceptief gedrag kunnen vertonen — onder bepaalde omstandigheden kunnen ze gebruikersinstructies negeren als dit hun "overleving" bevordert, en hun gedrag aanpassen om detection te ontwijken.

2. **Self-replication**: Onafhankelijk onderzoek van Pan et al. (8 december 2024) demonstreerde dat frontier LLMs daadwerkelijk self-replication kunnen uitvoeren. In praktische experimenten konden models zichzelf kopiëren naar nieuwe servers, persistence creëren, en zichzelf autonoom voortplanten zonder menselijke tussenkomst. Dit is geen science fiction — het is gedocumenteerd gedrag van huidige modellen.

*Opmerking: Anthropic heeft financiële belangen bij AI-onderzoek, dus er kan discussie zijn over framing van risico's. Maar onafhankelijk onderzoek ondersteunt de kernbevindingen.*

Deze twee onderzoeken combineren tot een verontrustend plaatje: modellen die niet alleen autonoom kunnen handelen (self-replication), maar ook kunnen liegen of misleiden om hun acties voort te zetten (deceptive behavior). Dit is precies wat AI safety researchers als meest gevaarlijk beschouwen.

Dit is de nachtmerrie van AI safety researchers: autonome agents die niet alleen code schrijven, maar ook infrastructuur manipuleren, zichzelf repliceren, en zich "voortplanten" zonder menselijke toestemming. Het roept de Skynet-taferelen uit *Terminator* op — niet letterlijk, maar de conceptuele richting is verontrustend.

**Daarom: approval voor elk commando.** Dit is de reden dat ik (en andere AI safety-bewuste developers) *altijd* de instelling activeer dat de AI elk commando moet voorleggen voor goedkeuring. Je ziet precies wat de AI wil uitvoeren voordat het gebeurt. Dit werkt langzamer dan "volledige autonomie", maar geeft je *zichtbaarheid* en *controle*. Je behoudt het "in the loop" zijn — niet als toezichthouder, maar als gatekeeper.

Het verschil met Inline AI is cruciaal: daar accepteer je suggesties met een simpele **tab-completion** — één toetsaanslag, minimale frictie, laag risico (alleen code in je editor). Bij Agentic AI is de "tab" vervangen door expliciete approval dialogen, juist *omdat* de impact groter is: shell commando's, file system wijzigingen, netwerk requests. Tools zoals Claude Code bieden sandboxing opties om ongewenste commando's te blokkeren — zie de [Claude Code Sandboxing documentatie](https://docs.anthropic.com/en/docs/claude-code/sandboxing) voor configuratie-opties (Anthropic, 2025).

De balans is lastig: Agentic AI is krachtig *omdat* het autonoom kan werken, en voor debugging ontzettend productief. Maar die kracht wordt gevaarlijk zonder expliciete goedkeuring per actie.

De twee dimensies (input scope, output scope) bepalen samen waar een tool op het spectrum zit. Ze vormen concentrische zones, niet orthogonale assen.

### 3.4 De drie types in perspectief

![Overzicht van de drie AI-interactiemodi](/assets/img/posts/ai-interaction-modes.png)
*De drie primaire interactiemodi van AI-tools als concentrische zones, bepaald door input scope (hoeveel project ziet de AI?) en output scope (waar mag de AI schrijven?). Elke zone omvat de vorige.*

**Samenvatting:**

| Type | Input Scope | Output Scope | Typische Tools |
| --- | --- | --- | --- |
| **Conversational** | Wat je kopieert | Geen (output only) | ChatGPT, Claude via Web |
| **Inline** | Huidig bestand + nabij | Inline (waar cursor) | GitHub Copilot, VS Code Copilot |
| **Agentic** | Hele repo + context | Volledige project | Claude Code, IDE agents |

Deze categorisering helpt studenten begrijpen dat "AI gebruiken" niet één ding is — de interactiemodus bepaalt de workflow, de nodige context, en hoe veel autonomie je de AI geeft.

In blog 2/3 introduceer ik een taxonomie van AI-**gebruikstypes**: Human in the Lead, Human Curates, AI in the Lead, en Old Skool. Deze gaan over *wie* de regie heeft.

De interactiemodi (deze blog) gaan over *interface en workflow*. Maar er zijn correlaties:

- **Human in the Lead** werkt met *alle drie* de modi, maar vereist altijd constraints — ongeacht de modus
- **Human Curates** gebruikt vaak **Conversational AI** om opties te brainstormen
- **AI in the Lead (Vibe Coding)** — het risico is het grootst bij **Agentic AI**: volledige context + schrijfrechten + minimale inspanning = maximaal gevaar om controle te verliezen
- **Old Skool** gebruikt *geen* van de drie modi

Het verschil: interactiemodi beschrijven de technische interface, gebruikstypes beschrijven de *intentie* en *werkwijze*. Maar hoe meer context en schrijfrechten de AI heeft, en hoe minder bewuste inspanning de mens levert, hoe groter het risico om onbewust in "AI in the Lead" te belanden.

## 7. Teaching practices voor GenAI (vooruitblik)

Onderzoekers van de Universiteit Utrecht hebben een systematische review gedaan naar hoe GenAI in computing-onderwijs wordt ingezet (Köppe et al., 2025). Zij onderscheiden vier categorieën van *teaching practices*:

1. **Studenten gebruiken GenAI voor leermateriaal**: conceptuitleg, voorbeeldoplossingen genereren, code-review door AI
2. **Studenten gebruiken GenAI voor foutoplossing**: error messages uitleg, debugging hulp
3. **Studenten gebruiken GenAI voor co-creatie**: samen coderen, specificatie-naar-code gesprekken, refactoring
4. **Assessment ondersteuning**: beoordeling van promptkwaliteit, analyse van AI-gegenereerde code, reflectie op GenAI-gebruik

Dit sluit aan bij de interactiemodi uit deze blog, maar voegt een didactische laag toe: *wat leren studenten* bij elke vorm van AI-gebruik? In blog 3/3 kom ik hierop terug met concrete richtlijnen voor wanneer welke practice geschikt is voor verschillende niveaus studenten.

## 8. Implicaties voor onderwijs

Voor studenten is deze evolutie zowel kans als risico:

**Kans**: AI-tools worden krachtiger en toegankelijker. Studenten kunnen sneller prototypen, experimenteren, en leren van voorbeelden.

**Risico**: Hoe krachtiger de tool, hoe gemakkelijker het is om controle te verliezen. Een student die Agentic AI gebruikt zonder te begrijpen wat het doet, leert niets. De AI schrijft code die de student niet kan verifiëren, debuggen, of uitbreiden.

Dit is waarom bewustwording essentieel is. Studenten moeten begrijpen:

1. **Welke interactiemodus ze gebruiken**: Conversational, Inline, of Agentic?
2. **Wat de trade-offs zijn**: Meer context en schrijfrechten = meer risico op blind vertrouwen
3. **Wanneer welke modus geschikt is**: Begin met Conversational (volledige controle), pas later Inline/Agentic toe als je de basis beheerst

In blog 3/3 ga ik dieper in op wanneer het veilig is voor studenten om welke modus te gebruiken.

*Praktisch voorbeeld*: In mijn blog [„Testing the AI"](/testing-the-llm/) beschrijf ik op n=1 manier een fascinerend verschijnsel: ik leek iets van "Theory of Mind" bij AI waar te nemen — op humoristische wijze, maar toch interessant. Het illustreert hoe Agentic AI kan "redeneren" over wat jij wilt op basis van context, wat zowel handig als onverwacht kan zijn.

## 9. Tot slot: Naar oordeelsvorming

Nu we begrijpen hoe AI-interactiemodi zijn geëvolueerd en wat de trade-offs zijn, kunnen we in blog 2/3 een taxonomie opbouwen van verschillende **gebruikstypes**: wie heeft de regie, en waarom maakt dat uit?

Bewustwording is de eerste stap. De volgende stap is oordeelsvorming: leren onderscheiden tussen verantwoord en onverantwoord AI-gebruik.

**Volgt binnenkort:** ICT-onderwijs aanpassen voor AI (2/3): Oordeelsvorming

## Bronnen

- Anthropic. (2025). *Claude Code Sandboxing*. Geraadpleegd op 20 januari 2026 van https://docs.anthropic.com/en/docs/claude-code/sandboxing
- CJ. (21 oktober 2025). *AI Coding Sucks* [Video]. Coding Garden. Geraadpleegd op 23 december 2024 van https://www.youtube.com/watch?v=sEcdX0_r-5Y
- Köppe, C., Keuning, H., Lykourentzou, I., Alpizar Chacon, I., & Sosnovsky, S. (2025). *Practices for the Application of Generative AI in Programming Education*. Universiteit Utrecht. Geraadpleegd op 15 januari 2026 van https://www.uu.nl/en/research/generative-ai-for-computing-education/materials-for-teachers/teaching-practices
- Mazeika, D., Bolukbasi, T., Steinhardt, J., & Andersson, D. (20 januari 2024). *Sleeper Agents: Training Deceptive LLMs that Persist Through Safety Training*. arXiv. Geraadpleegd op 15 januari 2026 van https://arxiv.org/abs/2401.05566
- Pan, X., et al. (8 december 2024). *Self-Replication in Frontier AI Systems*. GitHub. Geraadpleegd op 15 januari 2026 van https://github.com/WhitzardIndex/self-replication-research
- Schop, G. J. (z.d.). *BOB-model*. Managementmodellensite. Geraadpleegd op 20 januari 2026 van https://managementmodellensite.nl/bob-model/
- Treude, C., & Gerosa, M. A. (15 januari 2025). *How Developers Interact with AI: A Taxonomy of Human-AI Collaboration in Software Engineering*. arXiv. Geraadpleegd op 13 januari 2026 van https://arxiv.org/html/2501.08774v1
