---
layout: post
title: "Ethics for Software Engineers"
subtitle: "Opzet voor een 5 ECTS keuzevak"
date: 2026-01-11
date_started: 2026-01-11
lang: nl
draft: false
tags: [ethiek, onderwijs, software-engineering]
img: posts/boek-ethics-for-people-who-work-in-tech.png
---

Dit is een uitwerking van een idee voor de opzet van een keuzevak Ethiek binnen het HBO-ICT. De structuur is gebaseerd op het boek "Ethics for People Who Work in Tech" van Marc Steen (2022). Het vak sluit aan bij de keuzevakbeschrijving die toegepaste ethiek centraal stelt: praktische besluitvorming, niet abstracte filosofie.

De cursusstructuur volgt de drie delen van het boek, maar het boek zelf is niet per se verplicht - zie mijn overwegingen daarover [onderaan deze post](/ethics-for-software-engineers/#het-boek-verplicht-of-niet).

## Versiegeschiedenis

| Datum | Versie | Wijziging |
| ----- | ------ | --------- |
| 2026-01-11 | 1.0 | Eerste uitwerking van vakopzet |
| 2026-01-20 | 1.1 | Details/summary blokken gefixed; Optionele casussen toegevoegd **(WIP: nog valideren, voorlopig nog niet live, potentiele AI Slop!)** |

## Waarom dit vak?

De EU AI Act, GDPR en maatschappelijke druk maken ethische kennis niet langer optioneel. Bedrijven zoeken developers die verder kijken dan "het werkt". Met AI-tools die code genereren, verschuift de rol van de software developer. Hij/zij gaat/moet meer naar een *engineering*, meer testen, valideren. Maar ook de requirements duidelijk krijgen en eliciteren bij de opdrachtgever of ander stakeholders uit het toepassingsdomein van de beoogde applicatie of software. Daarbij is het ook van belang bredere context meenemen, uit de bredere maatschappelijke ontwikkelingen: minder typen, meer nadenken over *wat* je bouwt en *waarom*. Wat de impact daarvan is op het bedrijf en de maatschappij. En hier pro-actief in bijsturen.

## Drie delen

De opzet van de course volgt grofweg de structuur van Steen's boek.

### Deel 1: Intro Ethiek

**Inleiding:** Als software engineer, data engineer of security specialist kom je regelmatig vraagstukken tegen waarbij verschillende belangen botsen. Belangen van de opdrachtgever, de gebruikers van het systeem, andere stakeholders — en soms ook je eigen geweten. Deze dilemma's lijken niet altijd dramatisch, maar ze kunnen grote gevolgen hebben.

Neem social media platforms. Een opdrachtgever heeft veel baat bij het opslaan en analyseren van bepaalde data — locatiegegevens, gedragspatronen, voorkeuren. Maar gebruikers geven deze privacy ongemerkt op. Wat op korte termijn heel leuk lijkt (gratis platform, persoonlijke aanbevelingen) en positief voor het bedrijf (sterke groei, veel advertentie-inkomsten), heeft op langere termijn ernstige negatieve gevolgen. Twee voorbeelden:

- **TikTok**: Algoritmes optimaliseren voortdurend op engagement — wat gebruikers blijft kijken. Voor jongeren betekent dat een eindeloze feed van getriggerde content over uiterlijk, status, trend. Het gevolg? Een stijging van zelfbeeldproblemen, eetverstoornissen en angststoornissen onder tieners. De app werkt perfect voor wat het ontworpen is. Maar de maatschappelijke kosten zijn hoog.
- **Facebook en Cambridge Analytica**: Facebook verkocht niet alleen advertentiesruimte, maar ook de intieme psychologische profielen van miljarden gebruikers. Een bedrijf als Cambridge Analytica kon die profielen gebruiken voor microtargeting en politieke manipulatie. Legaal? Lastig. Ethisch? Zeker niet.

In beide gevallen bouwden ingenieurs code. Ze voltooidden features. Het systeem werkte zoals ontworpen. Maar niemand stopte en vroeg: *is dit wat we eigenlijk willen bouwen?*

**Theorie:** Om deze dilemma's te navigeren, behandelen we de drie ethische hoofdstromingen, steeds getoetst aan echte casussen:

- **Utilisme**: Maximaliseer geluk voor zoveel mogelijk mensen
- **Deugdethiek**: Handel zoals een wijs, moedig, rechtvaardig persoon zou doen
- **Deontologie**: Volg universele regels (bijv. "lieg niet", "steel niet", of Kants categorische imperatief: "gebruik mensen nooit alleen als middel")

**Praktijk:** Trolley problems helpen je jezelf beter te begrijpen. Ze zijn bewust abstract en extreem — juist daarom tonen ze wat je ethische intuïties zijn. Als je in een abstract, hypothetisch scenario twijfelt, welke waarden spelen mee? Utilistische afwegingen ("redden we meer levens?")? Regels ("ik mag dit simpelweg niet doen")? Karakter ("wat zou een goed mens hier doen?"). Door je eigen keuzes in trolley problems te analyseren, word je bewuster van welke stroming je aantrekt — en dat helpt je in echte dilemma's als die van social media.

Marc Steen beschrijft in hoofdstuk 5 de oorsprong van dit gedachte-experiment. Philippa Foot bedacht het in 1967 om het "moeilijk maken van ethische keuzes" uit te leggen — je hebt goede bedoelingen, maar je acties hebben ook schadelijke gevolgen. Ze vroeg zich af: wat doe je dan? Het punt dat Steen benadrukt is dat Foot dit dilemma bedacht om na te *denken*, niet om het "op te lossen" niet door 'uit te rekenen wat het meest ethisch is' of 'absolute regels te definieren die aangeven wat je moet doen'..

Het punt: Foot bedacht dit dilemma om over ethiek na te *denken*, niet om een algoritme te schrijven dat het "oplost". Maar precies dat laatste is de typische neiging van software engineers en veel andere techneuten: alles meetbaar en berekenbaar denken te kunnen maken. In sommige situaties werkt dat prima - maar ethiek zit vol onvolledige informatie, onzekerheden en situaties waar een puur statistische aanpak arbitrair of contra-intuïtief wordt. Vandaar ook de aantrekkingskracht van regel-gebaseerde ethiek (deontologie): als je niet alles kunt berekenen, kun je in ieder geval principes volgen.

Twee websites:

- [Moral Machine](https://www.moralmachine.net/) - Serieuze dilemma's over zelfrijdende auto's
- [Absurd Trolley Problems](https://neal.fun/absurd-trolley-problems/) - Grappiger variant

### Deel 2: Ethische basisprincipes

#### Kernconcepten en praktijkgevallen

In deel twee behandelen we vier sleutelconcepten, elk met werkelijke casussen en samenwerkingsvormen die studenten laten voelen hoe ethiek in echte situaties speelt.

**1. Technologie is niet neutraal.**

Elk design is een set keuzes. Een app die belooft "je helpen tijd in te sparen" kan ook ontworpen zijn om je langer vast te houden. Een algoritme dat "eerlijk" selecteert kan systematische bias bevatten. Technologie is altijd politiek en ethisch geladen.

<details>
<summary markdown="span">
       Casussen en werkvormen uitklappen
</summary>

### *Casus*: Recruitment AI discrimineert

Amazon bouwde een tool om CV's automatisch te screenen. De AI was getraind op historische CV's van werknemers — bijna allemaal mannelijk (tech-dominantie). Resultaat: vrouwen werden systematisch afgewezen door een algoritme dat niemand "bewust" discrimineerde. Het systeem "werkte" — het weigerde CV's sneller af. Maar het versterkte bestaande bias. Amazon heeft het later stopgezet. (Reuters, 2018)

*Werksituatie: Je bent UI-designer op een gig-economy app*

De opdrachtgever wil dat je het uitbetalingssysteem intuïtief maakt. Maar "intuïtief" kan ook betekenen: subtiel veel verborgen kosten en commissies. Je kunt het transparant ontwerpen of bewust moeilijk. Beide zijn "technisch correct". Wat doe je?

*Samenwerkingsvorm: Design de-briefing in groepen*

Verdeel de klas in groepjes. Elk groepje ontvangt een design-scherm (bijv. payment flow, notification preferences, cookie settings). Taak: plek de subtiele keuzes aan die het gedrag van gebruikers sturen. Wat zou een "ethisch ontwerp" anders doen?

</details>

---

**2. Gedeelde verantwoordelijkheid — de Legal-Ethical Matrix**

Steen stelt de *Legal-Ethical Matrix*: wat legaal is, is niet per se ethisch. En andersom. Als engineer kun je niet zeggen "het was legaal, dus niet mijn schuld".

| | Ethisch | Onethisch |
| --- | --- | --- |
| **Legaal** | Ideaal ✓ | Veel bedrijven hier |
| **Illegaal** | Whistleblowers (Snowden) | Duidelijk fout |

<details>

<summary markdown="span">
Casussen en werkvormen uitklappen
</summary>

## Casus: LinkedIn en je emailcontacten

LinkedIn stelde gebruikers om hun emailpaswoord in te voeren. Daarmee konden ze automatisch al je contacten importeren — en hen uitnodigen. Legaal? Ja, in de terms of service. Ethisch? Nee — gebruikers gaven onbewust hun hele contactenboek weg. LinkedIn gaf later toe dat dit "een fout was in onze design" (LinkedIn, 2012). Maar wie was schuldig? De engineers? Het product team? De CEO? Allen?

*Werksituatie: Je project manager vraagt je GDPR-data langer op te slaan*

De klant zegt: "We hebben die data nodig voor analyses." Legaal? Mogelijk, met goede justificatie. Ethisch? Niet nodig. Jij als engineer bent niet alleen coder maar ook "ethische kanaal" — je roept dit aan. Wat zeg je?

*Huiswerk: Matrix invullen*

Studenten krijgen 5 technologie-voorbeelden (Clearview AI, TikTok's algorithm, WhatsApp encryption, Google tracking, etc.). Taak: plaats elk in de matrix. Groepsdiscussie: waarom zitten ze daar? Wat verandert ze van plek?

</details>

---

**3. Enshittification — hoe platforms degraderen**

Cory Doctorow beschrijft dit patroon:

1. **Platform is goed voor gebruikers** (gratis, snel, betrouwbaar)
2. **Platform misbruikt gebruikers voor business customers** (verkoopt data aan adverteerders, prijzen stijgen)
3. **Platform misbruikt business customers** (algoritme verstopt hun content, tenzij ze betalen)
4. **Platform sterft** (iedereen verliest vertrouwen)

<details>
<summary markdown="span">
Casussen en werkvormen uitklappen
</summary>

*Casus: Twitter → X*

- **Fase 1**: Gratis platform, iedereen kan tweeten, bereikt miljoen volgers
- **Fase 2**: Advertenties introduceren, data verkopen aan adverteerders, analytics-tools alleen voor betaalde users
- **Fase 3**: Elon Musk koopt het. Alleen "verified" (betaalde) tweets krijgen zichtbaarheid. Algoritme favoriseert "X Premium" content
- **Fase 4**: Massale exodus naar Bluesky, Threads, Mastodon. Waarde van X daalt. Adverteerders verlaten platform.

*Werksituatie: Je bent senior dev op een streaming platform*

Management zegt: "Voeg reclames toe aan het gratis tier. Maak non-premium users' ervaring slechter zodat ze upgraden." Technisch eenvoudig. Bedrijf vind het prima — revenue stijgt. Maar je ziet dat users vertrekken. Wat vind je ervan?

*Samenwerkingsvorm: Platform-trajectory tekenen*

Groepjes kiezen een bekend platform (Instagram, Discord, Spotify, GitHub). Taak: teken de enshittification-curve. Waar is het platform nu? Wat waren de "eerste hints"? Wat zouden engineers op elk stadium hebben kunnen doen anders?

</details>

---

**4. Dark patterns — manipulatie door design**

De ACM: "Big tech gebruikt dark patterns om consumenten naar opties te sturen die nadelig zijn voor hun privacy". Dit zijn geen bugs. Het zijn features. Opzettelijk.

<details>
<summary markdown="span">
Casussen en werkvormen uitklappen
</summary>

*Casus: Facebook Messenger — download required*

Facebook maakte de Messenger-app verplicht. Wilde je Messenger gebruiken? Download een app. Op mobiel-web bleek het steeds moeilijker. Miljoenen downloads. Legaal? Ja. Manipulatief? Absoluut.

*Casus: TikTok en Instagram account verwijderen*

Gen Z zit op TikTok en Instagram. Account verwijderen is bewust moeilijk gemaakt:

- **Instagram**: Een ingewikkelde navigatieroute (Instellingen → Accounts Center → Persoonlijke gegevens → Eigendom en beheer) plus een maand wachtperiode. Op Android werkt het niet eens in de app; je moet naar de website. (Delia, 2023)
- **TikTok**: Een serie "confirmation screens" (elk scherm vraagt je opnieuw: "Weet je het zeker?") die je de kans geven je beslissing te heroverwegen. Plus een wachtperiode waarin één enkele app-click de teller reset. (Heritage Foundation, 2023)

Dit heet het "Hard to Cancel" dark pattern. Sinds februari 2024 verbiedt de Digital Services Act dit. Maar wie programmeerde het? Waarom?

*Huiswerk: Dark Pattern Hunt*

Studenten gaan **actief zoeken** naar dark patterns in apps en websites die ze dagelijks gebruiken of elders online staan:

- Pre-checked checkboxes
- Verborgen afmeldopties
- Fakedreiging van urgentie ("aanbieding verloopt vandaag!")
- Herhaalde bevestigingsschermen
- Moeilijke delete-flows

Ze documenteren wat ze vinden met screenshots. Volgende les: samenbrengen, bespreken, categoriseren.

*Samenwerkingsvorm: Fix it workshop*

Groepjes kiezen één dark pattern uit de huiswerk-collectie. Taak: ontwerp hoe het ethisch zou kunnen. Prototype-schets. Presenteer aan klas. Discussie: wat verliest het bedrijf? Wat wint de gebruiker?

</details>

---

**Praktijkopdracht: Zelf een dark pattern herkennen en analyseren**

In plaats van dark patterns zelf te bouwen (wat oppervlakkig voelt), doen studenten iets sterker: ze pakken **een bestaande dark pattern uit de praktijk** en voeren een gedetailleerde analyse:

1. **Herkennen**: Welke dark pattern is dit? (Verborgen kosten? Moeilijk uitstappen? Urgency-fake?)
2. **Bijdrage tracer**: Welke engineers/designers hebben hier aan meegewerkt? Wat is hun rol? (Frontend dev die het bouwt? Product manager die het eist? Designer die het ontwerpt?)
3. **Impact**: Wie wordt erdoor geraakt? Hoe voelen gebruikers zich?
4. **Alternatieven**: Hoe zou dit ethisch kunnen?
5. **Reflectie**: "Als ik hier zelf had gezeten — had ik ja gezegd?"

Dit is sterker dan bouwen, omdat het studenten dwingt om **verantwoordelijkheid** en **collectieve schuld** te doordenken. Het is niet "ik programmeer dit", maar "wie in deze organisatie koos ervoor en waarom?"

---

**5. Win-win ontwerp — voorbij zero-sum thinking**

Tot hier toe hebben we vooral casussen gezien waar Big Tech "slecht" is en gebruikers "slachtoffer". Maar dit is te simpel. De werkelijkheid is dat bedrijven óók onder druk staan. Gebruikers willen gratis diensten. Investeerders willen groei. Employees willen betaald werk. Dit zijn echte spanningen, niet kwaadwillendheid.

De vraag is: kun je alle partijen voeden zonder dat iemand eronder lijdt?

*Tegenvoorbeelden: Bedrijven die anders doen*

- **Signal**: Gratis messaging-app. Geen advertenties. Geen data-verkoop. Hoe verdienen ze geld? Donaties, en één betaald plan (Signal+). Gebruikers vertrouwen het, want er is geen incentive om hun data te misbruiken.
- **DuckDuckGo**: Zoekmachine zonder tracking. Ook zonder advertenties die je volgen. Ze verdienen door "anonieme" advertenties (je zoekt naar "schoenen", je ziet advertenties voor schoenen, maar DuckDuckGo kent je geschiedenis niet). Gebruiker wint privacy, bedrijf wint inkomsten.
- **Basecamp/Hey**: Email en project management. Betaald (geen gratis tier), geen advertenties, geen data-verkoop. Duurder dan Gmail, maar je bent klant, niet product. Bedrijf verdient door je te serveren, niet door je te exploiteren.

Deze bedrijven zijn niet perfect. Maar ze tonen dat andere businessmodellen *kunnen*.

*Huiswerk: Onderzoek eigen voorbeelden*

Studenten zoeken zelf een bedrijf of app waar ze denken: "Dit doet het goed." Ze zoeken naar:

- Blog posts of interviews van oprichters
- Reviews of feedback van gebruikers
- Hoe verdienen ze geld? Wat zijn hun trade-offs?
- Hoe lang kunnen ze dit volhouden?

Volgende les: presenteren en samen analyseren wat hen "goed" maakt.

*Werksituatie: Het dilemma van gratis*

Je werkt bij een startup met een geweldige app. Gratis is aantrekkelijk, maar de investeerders willen ROI. Je manager zegt: "We kunnen hier geld verdienen. Drie opties: (1) advertenties, (2) data verkopen, of (3) betaald plan met gratis tier." Alle drie hebben trade-offs. Wat zeg je?

*Samenwerkingsvorm: Stakeholder map*

Groepjes krijgen een platform of app (bijv. YouTube, Spotify, banking-app). Taak: teken alle stakeholders:
- Users (gratis willen, kwaliteit willen)
- Bedrijf (geld willen verdienen)
- Adverteerders (bereik willen)
- Medewerkers (betaald werk willen)
- Maatschappij (privacy, veiligheid willen)

Nu: welk businessmodel past? Wat verliest elke stakeholder? Wat wint elke stakeholder? Kan je het rechtvaardiger doen?

*Diepere vraag: "What if we sell?"*

Geld verdienen is niet inherent slecht. Het is nodig voor stabiliteit. Developers willen betaald worden. Servers moeten betaald. Maar wat gebeurt er als je bedrijf groeit, je gebruikersbestand stijgt, en dan word je **opgekocht door een ander bedrijf met ander belangen**?

Voorbeeld: **WhatsApp** was gratis (geen tracking, goede privacy). Facebook kocht het in 2014 voor $19 miljard. Jaren later: WhatsApp deelt metadata met Facebook. Gebruikers die dachten "dit is veilig" zagen hun privacy-model veranderen.

Vraag: Kun je "nee" zeggen tegen zo'n aanbod? Of moet je als founder aanvaarden dat groei betekent: je verliest controle?

*Huiswerk: Case study van transformatie*

Studenten kiezen een bedrijf dat is **opgekocht of voorgekocht** (WhatsApp, Instagram, YouTube, Slack, etc.) en onderzoeken:
- Wat waren de originele waarden?
- Wat veranderde na aankoop?
- Hadden studenten in het team kunnen/moeten zeggen "nee"?

---

**6. Systeem-analyse: De rol van lobby en regulering**

Tot hier toe hebben we bedrijven en engineers bekeken. Maar **de overheid** speelt ook mee.

De EU AI Act, GDPR, Digital Services Act — dit zijn regelgeving die ethiek "forceert". Bedrijven volgen omdat ze moeten. Maar:

- **Lobby-invloed**: Tech bedrijven geven miljoenen aan lobbyisten. Microsoft had in 2012 vrijwel geen lobbybudget in Brussel. Nu is het een van de grootste spenders. Dit beïnvloedt welke regelgeving écht streng is.
- **Gebrek aan kennis**: Politici en beleidsmakers begrijpen vaak niet hoe technologie werkt. Ze schrijven regelgeving die achterhaald is voor ze ondertekend wordt.
- **Capture**: Soms "vangen" grote bedrijven de regelgeving. Ze zeggen: "Dit gaat niet werken. Vertrouw ons en we regelen het zelf." Inspecties worden zwak. Boetes zijn peanuts.

<details>

<summary markdown="span">
Casussen en werkvormen uitklappen
</summary>

*Werksituatie: Je bent architect bij een tech bedrijf*

De EU stelt een nieuwe rule in. Je manager zegt: "Dat gaat veel kosten. We lobbyen tegen. Ik heb al contact met Brussel." Wat denk je?

*Huiswerk: Lobby tracking*

Studenten zoeken naar:

- Welke tech bedrijven gaven hoeveel geld aan lobbyisten in hun land? (veel landen publiceren dit)
- Wat vroegen ze? (Toegankelijk via registraties)
- Tegen welke regelgeving lobbyen ze?

Voorbeeld: OpenAI lobbied tegen strict AI regulation. GitHub Copilot (Microsoft) lobbied tegen copyright-wetten die hun training-data beschermen...

*Samenwerkingsvorm: Systeem-kaart tekenen*

Groepjes maken een "krachtenkaart":

- Links: regulators (regering, EU, etc.)
- Midden: bedrijven (Tech giants, startups, etc.)
- Rechts: maatschappij (gebruikers, activisten, media)

Pijlen: wie beïnvloedt wie? Wie wint, wie verliest?

*Voorbeeld: TikTok in de VS*

</details>

```text
REGULATORS (Links)          BEDRIJVEN (Midden)          MAATSCHAPPIJ (Rechts)
┌────────────────┐          ┌────────────────┐          ┌──────────────────┐
│ US Congress    │◄─────────│  ByteDance     │          │  Gen Z users     │
│ (wil ban)      │    $$$   │  TikTok        │─────────►│  (love app)      │
│ Trump, Biden   │  (lobbies)├────────────────┤          │                  │
└────────────────┘          │  Investors     │          │  Activists       │
       │                    │  (Chinese $)   │◄─────────│  (mental health  │
       │                    └────────────────┘  $$$     │   concerns)      │
       │                          ▲                      │                  │
       │ (ban dreigement)         │                      │  Media           │
       │                          │ (lobbies tegen)      │  (kritisch)      │
       ▼                          │                      └──────────────────┘
US Senators                ByteDance executive
zeggen: "We stoppen        teams zeggen: "Nee,
data-deling met China"    dit kan niet" en lobbyen
```

**Analyse:**

- **Regulators**: Willen ban of strikte controle (geopolitieke druk vanuit VS tegen China)
- **ByteDance**: Lobbiet gigantisch tegen ban. Ze hebben te veel inkomsten.
- **Users**: Willen de app houden. Ze petitioneren, protesteren.
- **Investeerders**: Winnen alleen met groei. Dus lobbyen mee.
- **Maatschappij**: Verdeeld. Sommigen: "Privé gevaar!" Anderen: "Mijn jongeren zijn erdoor verslaagd!"

**Wat kan een engineer hier doen?**

- Je werkt voor ByteDance — je zou kunnen zeggen: "Deze datadeling gaan we stoppen, privacy-first."
- Je werkt voor een VS-bedrijf — je kunt zeggen: "Dit gaat niet om technologie, maar om geopolitiek."
- Je bent activist — je organiseert gebruikers, niet tegen TikTok maar voor betere regelgeving.

Discussie: **Wie heeft hier écht macht?** (Spoiler: niet het bedrijf. De overheid.)

---

*Huiswerk: Business model canvas met ethiek*

Studenten kiezen een app/platform en vullen in:

- **Hoe verdient het geld?** (Advertising? Betaling? Data-verkoop? Ander?)
- **Wie profiteert?** (Welke stakeholders winnen, welke verliezen?)
- **Wat is het duurzaam?** (Kan dit model 10 jaar standhouden zonder uit te stokeren?)
- **Kan het beter?** (Welk alternatief zou meer stakeholders helpen?)

Dit dwingt studenten voorbij "Big Tech = slecht" te denken naar: *hoe maak je systemen waar iedereen beter van wordt?*

---

**Slotdiscussie deel 2:**

We hebben gezien hoe ethieke dilemma's werken. Niet als "goed vs slecht", maar als **spanning tussen legitieme belangen**. Gebruikers willen gratis en privé. Bedrijven willen geld verdienen. Investeerders willen groei. Wat doe je als softwareingineer? Je bouwt niet alleen code — je helpt deze spanningen op te lossen. En dat vraagt meer denken dan blaming.

### Deel 3: Rolmodellen onderzoek

**Opdracht:** Kies een interessante, liefst omstreden persoon uit de ICT-wereld. Presenteer:

- Achtergrond en wat deze persoon deed
- Argumenten van voor- en tegenstanders
- Je eigen mening met onderbouwing
- Wat neem je mee, wat niet?

**Suggesties:**

| Persoon | Bekend van |
| --- | --- |
| Alan Turing | Grondlegger informatica, codebreker, vervolgd |
| Julian Assange | WikiLeaks |
| Aaron Swartz | Reddit, open access activist |
| Edward Snowden | NSA klokkenluider |
| Tim Berners-Lee | Uitvinder World Wide Web |
| Shoshana Zuboff | "The Age of Surveillance Capitalism" |
| Cory Doctorow | Enshittification, digitale rechten activist |

Studenten mogen ook zelf iemand kiezen.

## Toetsing

- **Kennistoets**: Theorie uit deel 1 en 2
- **Presentatie**: Rolmodel onderzoek uit deel 3

## Aansluiting bij keuzevakbeschrijving

Dit vak raakt de volgende thema's uit de beschrijving:

| Thema | Hoe |
| --- | --- |
| Toegepaste ethiek | Praktijkopdrachten, niet alleen theorie |
| Duurzaamheid | Milieu-impact van datacenters, energieverbruik AI |
| Dark web | Context bij rolmodellen (Assange, Snowden) |
| Data-ethiek | Fingerprinting opdracht, GDPR |
| Wet- en regelgeving vs innovatie | Legal-Ethical Matrix |
| DEMAND ("durf te denken") | Kritische reflectie op eigen werk |

## Opdrachtvragen bij Absurd Trolley Problems

Huiswerk: doorloop de website. In de les reflecteren:

1. Hoeveel trolley problems geeft de quiz je precies?
2. De website toont het percentage mensen dat het met je eens was, niet "het goede antwoord". Waarom denk je?
3. Welk level vond je makkelijk? Welk moeilijk?
4. Bij de moeilijkste: welk argument zou iemand voor de andere optie kunnen geven?
5. Denk je dat er culturele verschillen zijn in de keuzes?
6. Hoe realistisch zijn deze problemen? Kun je er eentje realistischer maken?
7. Kies één level. Welke deugd is relevant (moed, eerlijkheid, rechtvaardigheid)? Past jouw keuze daarbij?
8. Kies één level. Welke plicht of regel is relevant ("gebruik niemand als middel")? Volgde jouw keuze die regel?
9. Bij welk level speelt het utilistische "meeste geluk voor meeste mensen" het sterkst?

## Over de cookie-vraag

De Absurd Trolley Problems site vraagt om cookie-toestemming. Je kunt de site ook gebruiken als je cookies weigert. Maar let op de "Legitimate Interest" vinkjes - deze staan default aan.

**Discussievraag:** Wat is "legitimate interest" eigenlijk? Waarom mogen deze vinkjes default aan staan, terwijl marketing-cookies dat niet mogen? Is dat eerlijk?

Antwoord: "Legitimate interest" is een AVG-grondslag waarbij bedrijven claimen een gerechtvaardigd belang te hebben. Het verschil met marketing is dat het "noodzakelijk" zou zijn voor de dienst. Of dat klopt, is precies het soort vraag dat we in dit vak stellen.)

## Het boek verplicht of niet

Een vraag waar ik nog mee worstel: moeten studenten het boek zelf aanschaffen?

**Argumenten voor verplicht stellen:**

- HBO-studenten lezen te weinig. Een verplicht boek dwingt tot serieuze verdieping.
- Papieren boeken werken anders dan schermen - minder afleiding, betere retentie.
- We kiezen voor drie van de belangrijkste ethische stromingen (want we kunnen niet álles behandelen, en het moet NIET te droog worden), namelijk utilisme, deugdethiek en deontologie. Deze staan er helder in uitgelegd.
- Steen schrijft vanuit tech-perspectief, niet vanuit abstracte filosofie.

**Argumenten tegen:**

- Academisch Engels kan lastig zijn voor 2e jaars HBO. Woorden als "vis-à-vis" of "doctrine of double effect" zijn niet alledaags.
- Afhaakrisico: als studenten het boek te moeilijk vinden, lezen ze helemaal niets.
- Kosten: niet elke student kan of wil €40+ uitgeven.

**Mijn voorlopige keuze:** Het boek is *aanbevolen*, niet verplicht. De cursusstructuur volgt wel de drie delen van het boek, zodat studenten die het wél lezen extra context hebben. De kernconcepten behandel ik in de les met toegankelijkere voorbeelden en Nederlandse uitleg.

Dit is een pragmatische middenweg: studenten die meer willen, kunnen het boek erbij pakken. Studenten die moeite hebben met academisch Engels, missen de essentie niet.

## Bronnen

- ACM. (2024). *Onderzoek naar dark patterns bij big tech*. Geraadpleegd van https://acm.nl/nl/publicaties/acm-roept-big-tech-op-gedrag-aan-te-passen
- Delia, M. (2023). *The Journey to Escape Instagram: Dark Patterns & The Ethics of UX*. Medium. Geraadpleegd van https://medium.com/@marleedelia/the-journey-to-escape-instagram-ec9ed857f77f
- Doctorow, C. (21 januari 2023). *Tiktok's enshittification*. Pluralistic. Geraadpleegd van https://pluralistic.net/2023/01/21/potemkin-ai
- Doctorow, C. (29 april 2025). *Cory Doctorow at CF 25: How Enshittification Conquered the 21st Century* [Video]. CloudFest. Geraadpleegd van https://www.youtube.com/watch?v=_Ai-fC-2Bpo
- Heritage Foundation. (2023). *Good Luck Trying To Leave TikTok*. Geraadpleegd van https://www.heritage.org/big-tech/commentary/good-luck-trying-leave-tiktok
- Schaffner, B., et al. (2022). *Understanding Account Deletion and Relevant Dark Patterns on Social Media*. Proceedings of the ACM on Human-Computer Interaction. Geraadpleegd van https://dl.acm.org/doi/abs/10.1145/3555142
- Steen, M. (2022). *Ethics for People Who Work in Tech*. CRC Press.
- [AG Connect: Waarom we Systems Thinking nodig hebben](https://www.agconnect.nl/maatschappij/ethiek/waarom-we-systems-thinking-nodig-hebben)

---
