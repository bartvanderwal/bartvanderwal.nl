# bartvanderwal.nl

Persoonlijke blog van Bart van der Wal, gebouwd met Jekyll en het Adam Blog 2.0 thema.

## Lokaal draaien

### Eenmalige setup

1. Zorg dat Homebrew Ruby is geïnstalleerd:
   ```bash
   brew install ruby
   ```

2. Voeg Ruby aan je PATH toe in `~/.zshrc`:
   ```bash
   export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.4.0/bin:$PATH"
   unset GEM_HOME GEM_PATH
   ```

3. Herlaad je shell:

```bash
source ~/.zshrc
```

4. Installeer dependencies:

```bash
bundle install
```

   Als `eventmachine` faalt, gebruik:

```bash
bundle config build.eventmachine --with-cxxflags="-I/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/v1"
bundle install
```

### Development server starten

```bash
bundle exec jekyll serve
```

De site draait dan op http://localhost:4000

## Deployment

Push naar de `main` branch triggert automatisch een GitHub Actions workflow die de site bouwt en deployt naar GitHub Pages.

Live site: https://bartvanderwal.nl

## Structuur

```
├── _posts/           # Blog posts (format: YYYY-MM-DD-titel.md)
├── _pages/           # Statische pagina's
├── assets/images/    # Afbeeldingen
├── _config.yml       # Site configuratie
├── _layouts/         # HTML layouts
├── _includes/        # Herbruikbare HTML componenten
└── .github/workflows/# GitHub Actions voor deployment
```

## Blog post schrijven

Maak een nieuw bestand in `_posts/` met format `YYYY-MM-DD-titel.md`:

```yaml
---
layout: post
title: "Je Post Titel"
date: YYYY-MM-DD
lang: nl
tags: [tag1, tag2]
---

Je content hier in Markdown...
```

## Taal

- **Standaard**: Nederlands (`lang: nl`)
- **Uitzondering**: Quora posts blijven Engels (`lang: en`)

## Thema

Gebaseerd op [Adam Blog 2.0](https://github.com/the-mvm/the-mvm.github.io) door Armando Maynez.

Features:
- Dark mode (automatisch)
- Responsive design
- Zoekfunctie
- Tags en categorieën
- Syntax highlighting
- MathJax ondersteuning

## Architectuurbeslissingen (ADRs)

- [ADR-001: Meertaligheid](docs/adr-001-multi-language.md)
- [ADR-002: Jekyll met GitHub Pages](docs/adr-002-jekyll-github-pages.md)
- [ADR-003: Privacy-vriendelijke Analytics](docs/adr-003-analytics.md)

## Infrastructuur

- [CapRover Multi-Site Setup](docs/caprover-setup.md) - VPS configuratie voor Umami, Spring Boot apps, databases
