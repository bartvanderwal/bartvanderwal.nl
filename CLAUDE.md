# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal blog and website for Bart van der Wal, built with Jekyll and hosted on GitHub Pages.

## Development Commands

```bash
bundle install                              # Install dependencies
./serve.sh                                  # Run local dev server at http://localhost:4000
./serve.sh check                            # Build & check for broken internal links
```

**Note**: Use `./serve.sh` instead of `bundle exec jekyll serve` directly - the shell script contains environment setup for Homebrew Ruby.

**Link Validation**: Use `./serve.sh check` to validate internal links before pushing (via html-proofer, disables external link checking). See README.md for details.

## Deployment

Push to `main` branch triggers GitHub Actions workflow for deployment.

Live site: https://bartvanderwal.nl

## Architecture

- **Theme**: Adam Blog 2.0
- **Language**: Dutch (`lang: nl`) by default. Exception: Quora posts remain English (`lang: en`)
- **Permalink style**: `/:title/`

### Blog Posts

Posts go in `_posts/` with format `YYYY-MM-DD-title.md`.

**Verplichte front matter velden:**

```yaml
---
layout: post
title: "Post Titel"
date_started: YYYY-MM-DD    # Datum waarop je begon met schrijven
date: YYYY-MM-DD             # Publicatiedatum (wanneer uit SOFA mode)
lang: nl                     # of "en" voor Quora posts
draft: true                  # true = SOFA mode, false = gepubliceerd
---
```

**Date-velden logica:**

- `date_started`: Altijd verplicht - de datum waarop je begon met schrijven
- `date`: Publicatiedatum wanneer blog uit SOFA mode (`draft: false`) komt
- Beide velden worden gebruikt voor versietabel generatie
- `revisions` array (optioneel) voor latere updates met `date`, `version`, en `note`

**Structuur voor langere posts:**

We nummeren secties en subsecties zoals in wetenschappelijk artikelen. Dit voor makkelijkere referentie, voor eigen leeswijzers of evt. externen bij feedback op de stukken. Het concept 'leeswijzer' hoort op meta niveau voor goed technische schrijven, maar gebruiken we NIET in artikelen zelf, die hun eigen onderwerp hebben, en niet over goed schrijven gaan.

De indeling sluit aan bij het idee van The Pyramid Principle van Barbara Minto. De lengte van de leeswijzer moet ook samenhangen met de grootte van de tekst die je beschrijft. Hoofd leeswijzer is langer en met iets meer termen al noemen, en hier en daar een detail, dan de minileeswijzers BINNEN een sectie. Vandaar ook het woord 'mini' :).

De focus is op structuur duidelijke krijgen, niet op volledigheid of inhoud duidelijk krijgen. En eventuele verbanden tussen secties duidelijk krijgen. Voor structuur is een inhoudsopgave meer geschikt, en voor inhoud dienen de subsecties zelf al. Als uitgebreide beschouwing op samenhang tussen twee secties nodig is, kan hier een aparte sectie of subscectie over komen. Maar anders kan dit mooi in de leeswijzer.

Met de leeswijzer kan een lezer eventueel snel direct naar een sectie doorgaan, die hem/haar het meest interesseert. Het vermindert de inspanning van de lezer, ten koste van meer inspanning benodigd bij de schrijver.

Het woord 'leeswijzer' zou je ook kunnen opvatten op HOE je dingen moet lezen of andere verwarrende interpretaties. Het doel is een snelle verwijzer voor de lezer. Maar dit uitleggen kun je niet bij stilstaan in een blog, dus daarom dit concept impliciet houden.

- **Genummerde secties**: Gebruik genummerde hoofdsecties (## 1. Titel, ## 2. Titel, etc.) voor posts met 4+ secties
- **Aantal secties**: Streef naar 5-9 secties (Miller's Law: 7 ± 2 is optimaal voor menselijke aandachtspan/mentale ruimte)
- **Subsecties**: Gebruik maximaal twee niveaus (## 1. en ### 1.1). GEEN ### 1.1.1 of dieper
- **Figuren**: Genummerde figuren met caption-formaat: `*Figuur X:* Caption tekst.` (ALLEEN "Figuur X" cursief, de dubbele punt erachter en caption zelf normaal; houd caption kort - verdere uitleg hoort in lopende tekst met verwijzing naar figuurnummer)
- **Inleiding met overzicht**: Sluit de inleiding af met een of meer alinea's die aangeven wat elke sectie behandelt
  - Gebruik NOOIT het woord "leeswijzer" of een apart kopje daarvoor — dit hoort gewoon in de laatste alinea('s) van de inleiding
  - Houd het **abstract en kort**: geef de _essentie_ van wat komt, niet alle details/termen
  - **Voorbeeld kort**: "We lopen de vier kwadranten langs, met de twee assen: komt het idee van mens of AI, en wie heeft de lead."
  - **Voorbeeld te lang**: "We lopen Type 1, Type 2, Type 3, en Type 4 langs, waarbij Type 4 bestaat uit Old Skool, Rubber Duck AI, en Learned from AI."
- **Mini-leeswijzers bij secties met subsecties**: Als een sectie subsecties heeft (bijv. 4.1-4.4), begin dan met een korte alinea die aangeeft wat er komt
  - Ook hier: abstract en kort, niet alle termen opsommen
- **Pyramid principle** (Barbara Minto): vertel wat er komt voordat je erin duikt. Geef de eindconclusie eerst, dan pas de uitleg, je schrijft geen fictie of spannende detective: je begint met wie het gedaan heeft, met welk wapen en waar, en maakt GEEN spanningsboog in technische of zakelijke teksten.

Voorbeeld:

```markdown
In dit artikel behandel ik hoe X werkt. Sectie 1 en 2 leggen de basis uit. Sectie 3 gaat dieper in op Y. Sectie 4 geeft praktische tips en sectie 4 de conclusie/samenvatting.

## 1. Eerste onderwerp

...

## 2. Tweede onderwerp
```

### Assets

Images stored in `assets/img/`.

## Markdown Style (markdownlint)

Follow markdownlint rules (David Anson plugin). Key rules:

- **MD032**: Blank lines before and after lists
- **MD031**: Blank lines before and after fenced code blocks
- **MD022**: Blank lines before and after headings
- **MD047**: Files should end with a single newline
- **MD009**: No trailing spaces
- **MD010**: No hard tabs, use spaces
- **MD012**: No multiple consecutive blank lines

Example correct structure:

```markdown
## Heading

Text before list.

- Item 1
- Item 2

Text after list.

## Next Heading
```

## APA Bronvermelding

Bij het schrijven van blog posts met bronnen, volg APA-stijl. Het doel is niet plagiaat voorkomen, maar tonen dat claims onderbouwd zijn met onderzoek.

### In-tekst citaties

De bron moet NIET het grammaticale onderwerp van de zin zijn wanneer tussen haakjes.

**Correct:**

```markdown
Google (2022) benadrukt dat actieve vorm korter is dan passieve vorm.
```

**Fout:**

```markdown
(Google, 2022) benadrukt dat actieve vorm korter is dan passieve vorm.
```

**Jaartal in tekst vs. volledige datum in bronnenlijst:**

- In de lopende tekst: gebruik alleen het jaartal, bijv. `(Wikipedia, 2026)`
- In de bronnenlijst: gebruik de volledige datum, bijv. `Wikipedia. (12 januari 2026). *Titel*...`

### Bronnenlijst

Formaat: Auteur. (datum). *Titel*. Geraadpleegd van url

Voorbeelden:

```markdown
## Bronnen

- Fowler, M. (2014). *Microservices*. Geraadpleegd van martinfowler.com
- Google. (september 2022). *Technical Writing*. Geraadpleegd van developers.google.com/tech-writing
- Evans, E. (2003). *Domain-Driven Design: Tackling Complexity in the Heart of Software*. Addison-Wesley.
- Merriam-Webster. (14 december 2025). *2025 Word of the Year: Slop*. Geraadpleegd van merriam-webster.com/wordplay/word-of-the-year
- Doctorow, C. (29 april 2025). *Cory Doctorow at CF 25: How Enshittification Conquered the 21st Century* [Video]. CloudFest. Geraadpleegd van youtube.com/watch?v=_Ai-fC-2Bpo
```

### Belangrijke regels

- **Vermijd z.d.** (zonder datum) - zoek bronnen met datum
- **Citeer liever dan parafraseer** - in het AI-tijdperk is directe citatie waardevoller
- **Kies erkende bronnen** - Martin Fowler, Uncle Bob, Kent Beck, officiële documentatie
- **Tekst moet op zichzelf staan** - lezer hoeft bronnen niet te raadplegen om te begrijpen

## Stijlregels

- **Vermijd "Niet om..., maar om..."**: Gebruik deze constructie niet of zeer spaarzaam. Formuleer positief wat iets *wel* is, in plaats van eerst te zeggen wat het niet is

## Git Commit Conventies

### Basisregels

- **Taal**: Nederlandse commit messages
- **AI-attributie**: Alleen Co-Authored-By footer, GEEN "Generated with Claude Code" tag
- **Model**: Vermeld het gebruikte model, GEEN email adres (noreply niet toegestaan in EU)

### Commit-strategie: Thematische groepering, niet per bestand

**NIET per file/map committen**, maar **per onderwerp/feature/wijziging** — ongeacht hoe veel bestanden raken.

**Voorbeelden thematische commits:**

1. **"Voeg sitemap generatie toe"**: wijzigt `_config.yml`, `_plugins/`, `serve.sh`, `README.md` — alles omdat het om sitemap gaat
2. **"Update jQuery versie in dependencies"**: wijzigt `package.json`, `Gemfile`, `Gemfile.lock`, `_includes/javascripts.html` — alles omdat het om dezelfde upgrade gaat
3. **"Herstructureer blog 1 secties"**: wijzigt `_posts/2026-01-14-...md`, eventueel `_includes/toc.html` — alles omdat het om blog 1's structuur gaat
4. **"Fix markdownlint warnings in old posts"**: wijzigt `_posts/2024-12-*`, `_posts/2025-12-*` — alles style/linting, geen content

**Hoe groeperen?**

Kijk naar de WAAROM/intentie achter wijzigingen:

- Wijzigingen met **dezelfde intentie** (bijv. upgraden, style-fixes, content-toevoeging) → 1 commit
- Wijzigingen met **verschillende intenties** (bijv. nieuw blog + config-fix + dependency-upgrade) → meerdere commits

### Commit message format

**Golden rule**: Subject line max **50 karakters** (Chris Beams). Daarna optioneel lege regel + body. Maar laat de body liever leeg, als daar veel bullets komen, kun je de commit ook opsplitsen in meerdere kleine commits.

```text
Korte titel (max 50 chars, imperatief mood)

Optioneel langere uitleg met WAAROM context.
- Bullet points voor deels wijzigingen
- Duidelijk maken welke bestanden waarom wijzigen
```

**Waarom 50 chars?** Korte titles zijn beter leesbaar in `git log --oneline`, GitHub PR summaries, en commit history tools.

Voorbeeld:

```text
Add header branding with credo

Added 'Wie schrijft, die blijft!' credo to header with
personal name/subtitle and GitHub fork link. Updated CSS
for logo styling (font sizes, letter-spacing, ALLCAPS removal).
```

**SLECHTS onderwerpregel?** Dat mag! Als het één duidelijke wijziging is. Body is optioneel.

## Git File Operations

- **Gebruik `git mv` in plaats van `mv`voor bestanden die al in Git repo ge-add zijn eerder**: Bestandsnamen aanpassen of verplaatsen altijd via `git mv` zodat de versiehistorie behouden blijft
- **Gebruik `git rm` in plaats van `rm` voor bestanden die al in Git repo ge-commit zijn**: Bestanden verwijderen altijd via `git rm` zodat Git de verwijdering trackt

## Important Reminders

- **Pumsticbockle**: Every Friday at 3:00 PM
