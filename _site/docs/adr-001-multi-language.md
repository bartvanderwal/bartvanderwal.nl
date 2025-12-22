# ADR-001: Meertaligheid

## Status

Geaccepteerd

## Context

De blog bevat zowel Nederlandstalige als Engelstalige content (Quora posts). Er moet een keuze gemaakt worden hoe met meertaligheid om te gaan.

## Decision

Handmatige aanpak met `lang` attribuut in front matter:
- Nederlandse posts: `lang: nl`
- Engelse posts (Quora): `lang: en`

Geen multi-language plugin. Browsers bieden tegenwoordig goede vertaalfunctionaliteit.

## Alternatives

### 1. jekyll-multiple-languages-plugin
- Aparte mappen per taal (`_i18n/nl/`, `_i18n/en/`)
- Volledige vertalingen van alle content
- **Nadeel**: Overhead voor kleine site, dubbel onderhoud

### 2. Polyglot
- Automatische URL's (`/nl/post/`, `/en/post/`)
- Makkelijkere setup dan optie 1
- **Nadeel**: Nog steeds plugin dependency, complexiteit

### 3. Handmatig met lang attribuut ✓
- Simpelste oplossing
- Geen plugin nodig
- Per-post taalinstelling
- **Nadeel**: Geen automatische vertalingen

## Consequences

- Eenvoudige setup zonder extra dependencies
- Quora posts blijven in originele taal (Engels)
- Bezoekers kunnen browser-vertaling gebruiken indien gewenst
- Minder onderhoud dan volledige meertalige site
