---
layout: post
title: "Nieuw ICT-onderwijs ivm AI (3/3)"
subtitle: "Besluitvorming: AI als leermiddel in plaats van butler"
date_started: 2026-01-12
date: 2026-01-20
lang: nl
tags: [ai, llm, onderwijs, leren, toetsing, besluitvorming]
img: posts/google-t-shaped-ai-enhanced-developer.png
draft: true
published: true
revisions:
  - date: 2026-01-21
    type: Gewijzigd
    note: "Sectienummers, leeswijzers en structuur toegevoegd. Sectie 3.2 en 3.4 samengevoegd (beide criteriumgericht mondeling assessment). Mini-leeswijzers bij secties 2-3 geven preview van subsecties. Nummeringsstructuur aangescherpt: geen x.y.z, sectie 5 ingevoegd als brug tussen 4 en 6."
---

In dit drieluik verken ik hoe ICT-onderwijs moet veranderen met de komst van AI. Dit derde deel gaat over **besluitvorming**: hoe zorgen we dat studenten AI gebruiken als leermiddel, niet als vervanging van leren?

**Drieluik structuur (BOB-model):**

- **Blog 1/3 (Bewustwording)**: De komst van AI en evolutie van interactiemodi
- **Blog 2/3 (Oordeelsvorming)**: Taxonomie van AI-gebruik: wie heeft de regie?
- **Blog 3/3 (Besluitvorming)**: AI als leermiddel, niet als butler - deze blog

Deze blog begint met het verificatieprobleem: hoe weten begeleiders of studenten AI verantwoord gebruiken? Vervolgens waarschuw ik studenten voor de expertise-valkuil: zonder basiskennis kun je AI-output niet beoordelen. Dan bespreek ik drie concrete toetsvormen die passen bij het AI-tijdperk: toetsen op begrip in plaats van alleen op product, criteriumgericht mondeling assessment, en theorietoetsen zonder hulpmiddelen. Ik sluit af met het besluit dat AI een leermiddel moet zijn, geen butler.

## 1. Het verificatieprobleem voor begeleiders

De vorige keer introduceerde ik verschillende types van *AI gebruik*, en welke (grofweg) gewenst was en welke niet gewenst: type 1: niet vibe-coden (type 3), soms ook type 4: geen AI, of AI alleen als trainer, maar daarna 'zelf doen'.

Maar hoe weet je als docent of bedrijfsbegeleider hoe een student AI daadwerkelijk heeft gebruikt? Je kunt niet in iemands hoofd kijken of de chat history controleren. Een student kan beweren zelf na te denken en AI alleen als hulpmiddel te gebruiken, terwijl in werkelijkheid alles blind wordt overgenomen zonder begrip.

Het geven van schriftelijke essay opdrachten is met de komst van LLM's en gebruik door studenten sowieso geen werkende toetsmethode meer in mijn ogen. Dit hebben we in ons ICT onderwijs al eerder geschrapt. Maar ter accomodatie van AI-werkelijkheid werken we met onderwijsherziening in de Propeduse met de volgende combinatie van toetsvormen:

1. **Mondelinge assessments** halverwege en aan het eind, waarin je je eigen werk toelicht en begrip aantoont.

2. **Theorietoets zonder hulpmiddelen** over conceptbegrip - in een safe browser, zonder AI of internet.

Deze aanpak verschuift de verantwoordelijkheid naar de student: gebruik AI zoals je wilt tijdens het maken, maar realiseer dat je later zonder hulpmiddelen moet kunnen uitleggen wat je hebt gedaan.

Het dwingt studenten om werk te maken met begrip. AI mag ondersteunen, maar niet vervangen.

## 2. Waarschuwing voor studenten: De expertise-valkuil

Als je nog bezig bent met leren programmeren, is de taxonomie niet alleen een beschrijving van werkwijzen — het is een waarschuwing. Type 1, 2 en 3 vereisen allemaal dat je de AI-output kunt beoordelen. En daar zit het probleem: **studenten hebben nog niet de expertise om AI-hallucinaties te herkennen**. Voor een diepere uitwerking van dit punt met Tiulkanov's flowchart: zie [blog 1/3, sectie 9](/ict-onderwijs-aanpassen-voor-ai-1-bewustwording/#9-de-expertise-verificatieprobleem-tiulkanovs-flowchart).

Subsecties 2.1-2.5 beschrijven het verificatieprobleem, waarom je zonder AI moet beginnen, geven een multi-criteria evaluatie van AI-types, leggen de verificatie-inspanning paradox uit, en verklaren waarom codekwaliteit geen criterium is.

![SDLC endless cycle (Kam et al., 2025, p.7)](/assets/img/posts/google-sdlc-endless-cycle.png)
*Figuur 1:* Software Development lifecycle/loop: Plan → Design → Code → Test → Deploy → Operations → Feedback (Kam et al., 2025, p.7)

### 2.1 Het verificatieprobleem

Bij Type 1-3 moet je alle AI-output verifiëren. Maar waartegen? Ervaren ontwikkelaars hebben mentale modellen van hoe dingen werken. Studenten moeten terugvallen op:

- **Officiële documentatie** — maar die is vaak te technisch of te abstract
- **Gerenommeerde leerboeken** — maar die behandelen misschien niet de specifieke library of framework
- **Docenten en begeleiders** — de meest betrouwbare optie, maar niet schaalbaar

En hier is de valkuil: je kunt niet een tweede AI-tool gebruiken om de eerste te verifiëren. Dat is cirkelredeneren. Als je ChatGPT's Python-code laat checken door Claude, heb je twee onbetrouwbare bronnen in plaats van één.

### 2.2 Start zonder AI: Bouw eerst je fundament

Mijn advies voor studenten: **begin met Type 4a (Old Skool)** totdat je de basis beheerst. Leer eerst handmatig:

- Hoe een for-loop werkt
- Waarom je een functie split
- Wat scope betekent
- Hoe je debugt zonder AI

Pas als je deze concepten beheerst, kun je veilig naar Type 4c (Learned from AI): gebruik AI om nieuwe concepten te leren, maar bouw eerst een fundament. En als je code laat genereren (Type 1-3), realiseer dan: **je bent verantwoordelijk voor code die je niet volledig begrijpt**.

Type 4b (Rubber Duck AI) is wel veilig: daar gebruik je AI alleen als klankbord voor je eigen ideeën, zonder inhoudelijke input over te nemen. Geen hallucinatie-risico, omdat je de AI-feedback al als onbetrouwbaar hebt geclassificeerd.

![Google's T-shaped model voor AI-enhanced developers](/assets/img/posts/google-t-shaped-ai-enhanced-developer.png)
*Figuur 1:* T-shaped AI-enhanced developer skills (Kam et al., 2025).

Dit T-shaped model uit Google's onderzoek visualiseert wat studenten nodig hebben (Kam et al., 2025). De verticale balk ("Core Software Engineering") is je fundament. De horizontale balk bovenaan ("GenAI Usage") is een aanvulling die je later leert.

Als student moet je eerst de verticale balk opbouwen voordat je de horizontale balk kunt dragen. Zonder die basis zak je door.

### 2.3 Multi-criteria evaluatie voor studenten

Om de verschillende AI-gebruikstypes objectief te vergelijken voor lerende ICT-studenten, gebruik ik een multi-criteria beslissingstabel. Deze methode komt uit de ICT Research Methods workshop over besliskunde en helpt om subjectieve oordelen expliciet te maken.

Ik evalueer acht criteria op een schaal van `--` (zeer negatief) tot `++` (zeer positief):

| Criterium                     | Human Leads | Human Curates | Vibe Coding | Old Skool | Rubber Duck | Learned from AI |
|-------------------------------|:-----------:|:-------------:|:-----------:|:---------:|:-----------:|:---------------:|
| **1. Productiviteit**         | +           | +             | ++          | 0         | 0           | +               |
| **2. Leercurve**              | --          | -             | ++          | 0         | 0           | +               |
| **3. Hallucinatie-risico**    | -           | -             | --          | ++        | ++          | +               |
| **4. Menselijke controle**    | ++          | +             | --          | ++        | ++          | ++              |
| **5. Verificatie-inspanning** | --          | --            | --          | 0         | 0           | -               |
| **6. Leerpotentieel**         | 0           | +             | --          | ++        | ++          | +               |
| **7. Begrip eigen werk**      | -           | -             | --          | ++        | ++          | +               |
| **8. Tech schuld risico**     | -           | 0             | --          | 0         | 0           | 0               |

**Belangrijkste inzichten:**

**Type 1-3 (AI genereert code):**

- Hoge productiviteit (`++` voor Type 3), maar tegen hoge prijs
- Verificatie-inspanning is `--` voor studenten: je moet alles checken maar mist de expertise
- Leerpotentieel en begrip zijn negatief: je leert weinig van code die je niet begrijpt
- Type 3 scoort overal negatief behalve op snelheid - dit is "vibe coding" zonder vangnet

**Type 4a (Old Skool):**

- Maximaal leerpotentieel (`++`) en begrip (`++`)
- Geen hallucinatie-risico, geen verificatie-inspanning
- Neutrale productiviteit - niet snel, maar ook niet langzaam als je de basis kent

**Type 4b (Rubber Duck AI):**

- Veilig voor studenten: geen hallucinatie-risico (`++`)
- Je gebruikt AI alleen als klankbord, niet voor inhoud
- Maximaal leerpotentieel - het proces van uitleggen helpt je denken

**Type 4c (Learned from AI):**

- Goede balans: geleerde kennis toepassen zonder AI-afhankelijkheid
- Positief leerpotentieel, begrip, en productiviteit
- Kleine verificatie-inspanning: je moet je geleerde kennis blijven toetsen

### 2.4 De verificatie-inspanning paradox

Het meest kritieke verschil voor studenten: bij Type 1-3 moet je MEER verifiëren dan een ervaren ontwikkelaar, maar heb je MINDER middelen om dit te doen. Een senior ziet in één oogopslag of code klopt; een student moet alles opzoeken in officiële documentatie, leerboeken, of vragen aan docenten. Niet in andere AI-tools - dat is beter dan niks, maar alsnog onbetrouwbaar en een cirkelredenatie.

Dit maakt Type 1 t/m 3 voor studenten veel riskanter dan de scores suggereren. De negatieve scores voor "Verificatie-inspanning" (`--`) wegen zwaarder voor studenten dan voor ervaren ontwikkelaars.

### 2.5 Geschrapte criteria

**Codekwaliteit** staat niet in de tabel. Dit criterium hangt niet af van het gebruikstype, maar van:

- Hoe goed je prompt schrijft
- Welke constraints je meegeeft (types, linters, tests)
- Of je code reviews doet
- Of je test-driven development toepast

Type 1 met goede prompts en constraints levert betere code dan Type 4a zonder tests of linters. Het criterium is relevant, maar orthogonaal aan de taxonomie.

## 3. Toetsvormen in het nieuwe onderwijs

Het verificatieprobleem dat we eerder bespraken (je kunt niet in iemands hoofd kijken) vereist een andere manier van toetsen. In plaats van alleen het eindproduct te beoordelen, moeten we toetsen of studenten daadwerkelijk begrijpen wat ze hebben gemaakt.

De volgende drie subsecties (3.1-3.3) behandelen toetsen op leren in plaats van product, criteriumgericht mondeling assessment, en theorietoetsen zonder hulpmiddelen.

### 3.1 Toetsen op leren in plaats van op product

De traditionele aanpak: beoordeel het werkende product. De student levert code in, het werkt, cijfer is goed. Maar met AI kan die code volledig gegenereerd zijn zonder dat de student iets heeft geleerd.

De nieuwe aanpak: beoordeel het **leerproces** en **begrip**. De student moet kunnen uitleggen:

- Waarom deze aanpak gekozen is
- Welke alternatieven overwogen zijn
- Hoe de code werkt op conceptniveau
- Wat de trade-offs zijn

Dit verschuift de verantwoordelijkheid naar de student. Je mag AI gebruiken tijdens het maken, maar je moet later zonder AI kunnen uitleggen wat je hebt gedaan.

### 3.2 Criteriumgericht mondeling assessment

Tijdens het project zit de student tegenover een docent en licht het werk toe. Dit is geen "verdediging" zoals bij een eindscriptie, maar een gesprek over het proces:

- "Hoe heb je deze bug gevonden?"
- "Waarom heb je voor deze datastructuur gekozen?"
- "Wat zou je anders doen als je opnieuw begon?"

De student die alles heeft laten genereren zonder te begrijpen, komt hier in de problemen. De student die Type 1 (Human in the Lead) heeft gebruikt, kan precies uitleggen waarom elke keuze is gemaakt.

**Criteria voor beoordeling:**

In plaats van een enkel cijfer gebruiken we een set criteria waarop de student wordt beoordeeld:

- **Begrip van concepten**: Kan de student uitleggen wat de code doet?
- **Ontwerpbeslissingen**: Kan de student verantwoorden waarom deze aanpak gekozen is?
- **Probleemoplossend vermogen**: Kan de student debuggen zonder AI?
- **Reflectie**: Kan de student aangeven wat beter had gekund?

Dit maakt expliciet wat we verwachten. Een student die AI effectief heeft gebruikt (Type 1 of 2) scoort hoog op alle criteria. Een student die blind heeft overgenomen (Type 3) scoort alleen hoog op "werkend product" maar niet op begrip.

### 3.3 Theorietoets op conceptbegrip

Een toets in een safe browser, zonder AI of internet. Geen code schrijven, maar concepten uitleggen:

- "Leg uit wat dependency injection is en waarom je het zou gebruiken"
- "Vergelijk REST en GraphQL: wat zijn de trade-offs?"
- "Beschrijf hoe je een race condition debugt"

Dit toetst of de student de concepten begrijpt, los van de mogelijkheid om AI te gebruiken. Een student die heeft geleerd met AI (Type 4c) kan deze vragen beantwoorden. Een student die alleen heeft ge-vibe-coded (Type 3) kan dat niet.

## 4. Besluit: AI als leermiddel, niet als vervanging

De titel van deze blog spreekt van "AI als leermiddel in plaats van butler". Dat woord is bewust gekozen. Een butler doet wat je zegt zonder dat je hoeft na te denken. Dat is precies wat Type 3 (AI in the Lead / Vibe Coding) is: de AI doet het werk, jij accepteert, niemand leert iets.

![AI-assisted gitaar leren](/assets/img/posts/guitar-ai-assisted-learning.png)
*Figuur 2:* AI-assisted gitaar leren met feedback als leermiddel.*

**AI als leermiddel** betekent iets anders:

- **Type 4c (Learned from AI)**: Je vraagt AI om een concept uit te leggen, leest het, begrijpt het, en past het later zelfstandig toe
- **Type 4b (Rubber Duck AI)**: Je gebruikt AI als klankbord om je eigen gedachten te ordenen
- **Type 1 (Human in the Lead)**: Je geeft gedetailleerde opdrachten, controleert alles, en leert van het proces

Het verschil: bij AI als leermiddel blijft de student actief betrokken. Bij AI als butler verschuift het denken naar de AI.

De paradox die we eerder zagen blijft staan: AI maakt programmeren toegankelijker, maar verlaagt tegelijk de lat voor mensen die nog niet kunnen beoordelen of de output klopt. De oplossing is niet AI verbieden, maar studenten leren het verantwoord te gebruiken.

**Begin met begrip, niet met generatie.** Pas als je de basis beheerst, kun je veilig AI gebruiken om sneller te werken. Maar die basis moet er eerst zijn.

## Tot slot: Implementatie

Dit drieluik sluit af met een oproep: pas ICT-onderwijs aan zodat studenten AI effectief én verantwoord leren gebruiken. Begin met bewustwording (blog 1/3), bouw oordeelsvorming op met een taxonomie (blog 2/3), en neem beslissingen over toetsvormen en leertrajecten (deze blog).

**Lees ook:**

- [Blog 1/3: Bewustwording](/ict-onderwijs-aanpassen-voor-ai-1-bewustwording/)
- [Blog 2/3: Oordeelsvorming](/ict-onderwijs-aanpassen-voor-ai-2-oordeelsvorming/)
- [AI Coding Sucks](/ai-coding-sucks/) - de blog die aan dit drieluik voorafging

---

<details>

<summary markdown="span">Samenvatting als antwoorden op BOB-vragen 'Besluitvorming'
</summary>

![BOB-model: van probleem naar besluit via Beeldvorming, Oordeelsvorming en Besluitvorming](/assets/img/posts/bob-model-funnel.png)
*Figuur 3:* BOB-model als trechter van probleem naar besluit (Schop, z.d.).

In de Besluitvormingsfase van het BOB-model worden vier vragen beantwoord:

| Vraag | Beantwoording in deze blog |
| ----- | -------------------------- |
| **1. Wat besluiten we?** | - Toetsvormen aanpassen: criteriumgericht interview (CGI) en theorietoets in safe browser<br>- Brownfield development voor complexere leeromgeving<br>- Nadruk op domeinkennis en analyse van bestaande code<br>→ Sectie "Toetsvormen in het nieuwe onderwijs" |
| **2. Wat gaan we doen?** | - Samen met docenten het onderwijs doorontwikkelen<br>- Studenten leren eerst Type 4a/4b/4c (zonder of met AI als leraar)<br>- Daarna pas Type 1-3 (AI genereert code) gebruiken<br>→ Sectie "Start zonder AI: Bouw eerst je fundament" |
| **3. Weet iedereen welk besluit is genomen?** | - Communiceren via studiedag<br>- Teams-omgeving<br>- Eventueel nieuwsbericht<br>→ Sectie "Tot slot: Implementatie" |
| **4. Is iedereen het met het besluit eens?** | - Afstemmen met Curriculumcommissie (CuCo)<br>- Afstemmen met stuurgroepen en opleidingscommissie<br>- Studenten informeren en polsen<br>→ Dit vraagt om vervolgacties buiten deze blog |

</details>

---

## Bronnen

- Kam, M., Miller, C., Wang, M., Tidwell, A., Lee, I. A., Malyn-Smith, J., Perez, B., Tiwari, V., Kenitzer, J., Macvean, A., & Barrar, E. (23 juni 2025). *What do professional software developers need to know to succeed in an age of Artificial Intelligence?* arXiv. Geraadpleegd op 13 januari 2026 van https://arxiv.org/abs/2506.00202
- Schop, G. J. (z.d.). *BOB-model*. Managementmodellensite. Geraadpleegd op 20 januari 2026 van https://managementmodellensite.nl/bob-model/
- UNESCO IESALC. (2023). *ChatGPT and Artificial Intelligence in Higher Education: Quick Start Guide* (Report no. ED/HE/IESALC/IP/2023/12). Geraadpleegd op 13 januari 2026 van https://unesdoc.unesco.org/ark:/48223/pf0000394935
