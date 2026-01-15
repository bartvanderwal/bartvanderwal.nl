---
layout: post
title: "Ethics for Software Engineers"
subtitle: "Opzet voor een 5 ECTS keuzevak"
date: 2026-01-11
date_started: 2026-01-11
lang: nl
draft: true
tags: [ethiek, onderwijs, software-engineering]
img: posts/boek-ethics-for-people-who-work-in-tech.png
---

Dit is een uitwerking van een idee voor de opzet van een keuzevak Ethiek binnen HBO-ICT, gebaseerd op het boek "Ethics for People Who Work in Tech" van Marc Steen (2022). Het vak sluit aan bij de keuzevakbeschrijving die toegepaste ethiek centraal stelt: praktische besluitvorming, niet abstracte filosofie.

De cursusstructuur volgt de drie delen van het boek, maar het boek zelf is niet per se verplicht - zie mijn overwegingen daarover [onderaan deze post](#het-boek-verplicht-of-niet).

## Waarom dit vak?

De EU AI Act, GDPR en maatschappelijke druk maken ethische kennis niet langer optioneel. Bedrijven zoeken developers die verder kijken dan "het werkt". En met AI-tools die code genereren, verschuift de rol van de software developer. Hij/zij gaat meer naar een software engineer, meer testen, valideren en ook requirements duidelijk krijgen en eliciteren bij stakeholders uit een beoogd toepassingsdomenin. Maar ook bredere context meenemen, uit de bredere maatschappelijke ontwikkelingen: minder typen, meer nadenken over *wat* je bouwt en *waarom*.

## Drie delen

De opzet van de course volgt grofweg de structuur van Steen's boek.

### Deel 1: Intro Ethiek

**Theorie:** De drie ethisiche hoofdstromingen:

- **Utilisme**: Maximaliseer geluk voor zoveel mogelijk mensen
- **Deugdethiek**: Handel zoals een wijs, moedig, rechtvaardig persoon zou doen
- **Deontologie**: Volg universele regels (bijv. "lieg niet", "steel niet", en dergelijke regels die ook in sommige religies terugkomen, of Kants categorische imperatief: "gebruik mensen nooit alleen als middel")

**Praktijk:** Trolley problems. Niet om het "goede antwoord" te vinden, maar om te ontdekken welke ethische intuïties je hebt.

Marc Steen beschrijft in hoofdstuk 5 de oorsprong van dit gedachte-experiment:

> "In 1967, English philosopher Philippa Foot (1920–2010) wanted to discuss the 'doctrine of double effect': the difficulty of having to evaluate acting out of good intentions vis-à-vis bringing about harms as side effects of this acting. She invited readers to imagine being in the position of 'the driver of a runaway tram which he can only steer from one narrow track on to another; five men are working on one track and one man on the other; anyone on the track he enters is bound to be killed'. She wanted to illustrate the difficulty of such dilemmas. It is quite unlikely that she wanted to present a problem that computer scientists or software engineers can solve through calculation and optimization." (Steen, 2022, p. XX)

Het punt: Foot bedacht dit dilemma om over ethiek na te *denken*, niet om een algoritme te schrijven dat het "oplost". Maar precies dat laatste is de typische neiging van software engineers en veel andere techneuten: alles meetbaar en berekenbaar denken te kunnen maken. In sommige situaties werkt dat prima - maar ethiek zit vol onvolledige informatie, onzekerheden en situaties waar een puur statistische aanpak arbitrair of contra-intuïtief wordt. Vandaar ook de aantrekkingskracht van regel-gebaseerde ethiek (deontologie): als je niet alles kunt berekenen, kun je in ieder geval principes volgen.

Twee websites:

- [Moral Machine](https://www.moralmachine.net/) - Serieuze dilemma's over zelfrijdende auto's
- [Absurd Trolley Problems](https://neal.fun/absurd-trolley-problems/) - Grappiger variant

### Deel 2: Ethische basisprincipes

**Kernconcepten uit Steen's boek:**

**Technologie is niet neutraal.** In hoofdstuk 3 ("Is technology a neutral tool?") schrijft Steen:

> "Cars, bridges, and shavers, and indeed all technologies, are not neutral. An instrumental view on technology is mistaken; we cannot use technologies as neutral instruments. A deterministic view is also erroneous; technologies do not determine our behaviours. Rather, the design and usage of technologies are embedded in a web of more or less intentional decisions, of both designers and users." (Steen, 2022, p. XX)

**Gedeelde verantwoordelijkheid.** Als software engineer kun je niet alle verantwoordelijkheid afschuiven op de opdrachtgever. Steen introduceert de *Legal-Ethical Matrix*: wat legaal is, is niet per se ethisch. En andersom.

**Enshittification.** Cory Doctorow introduceerde in 2023 dit begrip om te beschrijven hoe platforms systematisch verslechteren:

> "Here is how platforms die: first, they are good to their users; then they abuse their users to make things better for their business customers; finally, they abuse those business customers to claw back all the value for themselves. Then, they die." (Doctorow, 2023)

Dit patroon zie je bij Facebook, Twitter/X, en anderen. Relevant voor studenten: als je voor zo'n platform werkt, bouw je mee aan die verslechtering. Wat betekent dat voor jouw verantwoordelijkheid?

**Dark patterns.** De ACM onderzocht hoe big tech manipulatieve ontwerptechnieken inzet: "Big techbedrijven maken het consumenten moeilijk om hun privacy te beschermen. Ze gebruiken dark patterns om consumenten te sturen naar opties die nadelig zijn voor hun privacy" (ACM, 2024).

**Praktijkopdracht:** Bouw iets dat ethisch twijfelachtig is:

- Browser fingerprinting
- Een checkbox die default aan staat (denk aan "ja, stuur mij nieuwsbrieven")
- Dark patterns zoals verborgen afmeldopties
- Een "verwijder account" flow die zo ingewikkeld mogelijk is

**Voorbeeld: TikTok en Instagram account verwijderen**

Gen Z (geboren 1997-2012) zit niet op Facebook, maar wel op TikTok en Instagram. Ook daar is account verwijderen bewust moeilijk gemaakt:

- **Instagram**: 16 klikken en een maand wachten om je account te verwijderen. De optie zit verstopt onder Instellingen → Accounts Center → Persoonlijke gegevens → Eigendom en beheer → Deactiveren of verwijderen. Op Android moet je zelfs naar de website - het kan niet in de app. (Delia, 2023)
- **TikTok**: Vergelijkbare "gauntlet of confirmation screens" die je beslissing steeds opnieuw in twijfel trekken. Plus een 30-dagen wachtperiode waarin één klik op de app je teller reset. (Heritage Foundation, 2023)

Dit heet het "Hard to Cancel" dark pattern: het opzegproces zo complex en tijdrovend maken dat gebruikers opgeven (Schaffner et al., 2022).

**Relevant:** Sinds februari 2024 verbiedt de Digital Services Act dit soort praktijken expliciet. Maar de vraag blijft: als ontwikkelaar, bouw je dit soort flows - wat doe je dan?

Week erna: waarom deed je dit? Wat zegt de ACM over dark patterns? Hoe verhoudt dit zich tot enshittification? Wat zijn alternatieven?

### Deel 3: Rolmodellen onderzoek

**Opdracht:** Kies een interessante, liefst omstreden persoon uit de ICT-wereld. Presenteer:

- Achtergrond en wat deze persoon deed
- Argumenten van voor- en tegenstanders
- Je eigen mening met onderbouwing
- Wat neem je mee, wat niet?

**Suggesties:**

| Persoon | Bekend van |
|---------|------------|
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
|-------|-----|
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

*(Antwoord: "Legitimate interest" is een AVG-grondslag waarbij bedrijven claimen een gerechtvaardigd belang te hebben. Het verschil met marketing is dat het "noodzakelijk" zou zijn voor de dienst. Of dat klopt, is precies het soort vraag dat we in dit vak stellen.)*

## Het boek: verplicht of niet?

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

*Dit is een draft. Feedback welkom.*
