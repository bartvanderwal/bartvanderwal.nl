# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal blog and website for Bart van der Wal, built with Jekyll and hosted on GitHub Pages.

## Development Commands

```bash
bundle install              # Install dependencies
./serve.sh                  # Run local dev server at http://localhost:4000 (preferred)
bundle exec jekyll serve    # Alternative: direct Jekyll command
```

**Note**: Use `./serve.sh` instead of `bundle exec jekyll serve` directly - the shell script contains the full command and is the convenient way to start the Jekyll server.

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

- **Genummerde secties**: Gebruik genummerde hoofdsecties (## 1. Titel, ## 2. Titel, etc.) voor posts met 4+ secties
- **Inleiding met overzicht**: Sluit de inleiding af met een alinea die aangeeft wat elke sectie behandelt. Gebruik NOOIT het woord "leeswijzer" of een apart kopje daarvoor — dit hoort gewoon in de laatste alinea('s) van de inleiding

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

## Git Commit Conventies

- **Taal**: Nederlandse commit messages
- **AI-attributie**: Alleen Co-Authored-By footer, GEEN "Generated with Claude Code" tag
- **Model**: Vermeld het gebruikte model, GEEN email adres (noreply niet toegestaan in EU)

Voorbeeld:

```text
Korte beschrijving van de wijziging

Optioneel langere uitleg.
```

## Git File Operations

- **Gebruik `git mv` in plaats van `mv`voor bestanden die al in Git repo ge-add zijn eerder**: Bestandsnamen aanpassen of verplaatsen altijd via `git mv` zodat de versiehistorie behouden blijft
- **Gebruik `git rm` in plaats van `rm` voor bestanden die al in Git repo ge-commit zijn**: Bestanden verwijderen altijd via `git rm` zodat Git de verwijdering trackt

## Important Reminders

- **Pumsticbockle**: Every Friday at 3:00 PM
