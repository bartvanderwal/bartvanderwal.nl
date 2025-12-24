# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal blog and website for Bart van der Wal, built with Jekyll and hosted on GitHub Pages.

## Development Commands

```bash
bundle install              # Install dependencies
bundle exec jekyll serve    # Run local dev server at http://localhost:4000
```

## Deployment

Push to `main` branch triggers GitHub Actions workflow for deployment.

Live site: https://bartvanderwal.nl

## Architecture

- **Theme**: Adam Blog 2.0
- **Language**: Dutch (`lang: nl`) by default. Exception: Quora posts remain English (`lang: en`)
- **Permalink style**: `/:title/`

### Blog Posts

Posts go in `_posts/` with format `YYYY-MM-DD-title.md`. Front matter requires `layout: post`, `title`, and `lang: nl` (or `lang: en` for English posts).

### Assets

Images stored in `assets/images/`.

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
- **Model**: Vermeld het gebruikte model in de Co-Authored-By

Voorbeeld:

```text
Korte beschrijving van de wijziging

Optioneel langere uitleg.

Co-Authored-By: Claude <model>/<noreply@anthropic.com>
```
