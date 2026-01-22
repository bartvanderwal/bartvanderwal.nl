# bartvanderwal.nl

Persoonlijke blog van Bart van der Wal, gebouwd met Jekyll en het Adam Blog 2.0 thema met een aantal aanpassingen.

Lees [deze blog op de live website bargvanderwal.nl](htps://bartvanderwal.nl).

## Lokaal draaien

### Eenmalige setup op de macOS

1. Zorg dat je met Homebrew Ruby is geïnstalleerd:

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

Run `./serve` script om lokaal te starten.

Dit voert achter de schermen het Jekyll start commando uit:

```bash
bundle exec jekyll serve
```

De site draait dan op `http://localhost:4000`.

### Link validatie en Image checking

Valideer interne links en afbeeldingen voordat je pusht:

```bash
./serve check
```

Dit bouwt de site en draait [htmlproofer](https://github.com/gjtorikian/html-proofer) welke checkt op:

- **Broken internal links**: Links naar niet-bestaande pagina's
- **Missing images**: ./sAfbeeldingsverwijzingen die niet bestaan
- **Invalid HTML**: Verkeerde HTML structuur
- **Externe links**: Waarschuwingen voor kapotte externe URLs (optioneel uit te zetten)

**Output voorbeeld:**
```
Building site...
Checking internal links and images...
... (checks running) ...
✓ HTML-Proofer checks passed!
```

**Veelvoorkomende problemen:**

1. **Missing image**: `/assets/images/...` → moet `/assets/img/...` zijn
2. **Broken link**: Link verwijst naar niet-bestaande post
3. **Title too long**: Blog post titel te lang (ca. 30-40 karaktersl zodat het op 1 regel past op desktop view; zie: `_plugins/title_length_checker.rb`
4. **Subtitle too long**: Subtitel te lang (ca. 60-70 karakters); zodat het op 1 regel past op desktop view; zie: `_plugins/subtitle_length_checker.rb`

### Troubleshooting: Cache issues

Als htmlproofer nog oude fouten rapporteert ondanks dat je ze hebt gefixed in de `.md` bestanden, kan de Jekyll cache stale zijn. Verwijder de build output en rebuild schoon:

```bash
rm -rf _site .jekyll-cache && bundle exec jekyll build
```

Dit gebeurt automatisch wanneer je `./serve check` draait, maar kan handmatig nodig zijn als je tussen sessies cache issues hebt.

### Htmlproofer opties

- `--disable-external`: Controleert externe URLs niet (sneller)
- `--checks Links,Images`: Forceer zowel link- als image-checks (ook als defaults ooit wijzigen)

## Deployment

Push naar de `main` branch triggert automatisch een GitHub Actions workflow die de site bouwt en deployt naar GitHub Pages.

Live site: `https://bartvanderwal.nl`

## Structuur

```console
├── _posts/           # Blog posts (format: YYYY-MM-DD-titel.md)
├── _pages/           # Statische pagina's
├── assets/img/posts/ # Post header images (voor front matter img:)
├── _config.yml       # Site configuratie
├── _layouts/         # HTML layouts
├── _includes/        # Herbruikbare HTML componenten
└── .github/workflows/# GitHub Actions voor deployment
```

### Header images voor posts

Post header images worden geplaatst in `assets/img/posts/` en gekoppeld via de `img:` front matter:

```yaml
---
layout: post
title: "Je Post Titel"
img: posts/mijn-plaatje.png    # Relatief pad vanaf assets/img/
---
```

Het plaatje verschijnt als:

- Header image bovenaan de post
- Thumbnail op de archive/overzichtspagina

**Let op**: Gebruik `assets/img/posts/`, niet `assets/images/posts/`. Het thema verwacht afbeeldingen in `assets/img/`.

## Blog post schrijven

Maak een nieuw bestand in `_posts/` met format `YYYY-MM-DD-titel.md`:

```yaml
---
layout: post
title: "Je Post Titel"
date_started: 2024-12-23    # Datum waarop je begon met schrijven (altijd verplicht)
date: 2024-12-26            # Publicatiedatum wanneer uit SOFA mode (verplicht als draft: false)
lang: nl
tags: [tag1, tag2]
img: posts/mijn-plaatje.png # Header image (optioneel)
draft: true                 # true = SOFA mode, false = gepubliceerd
revisions:                  # Optioneel: latere updates na publicatie
  - date: 2024-12-28
    version: "1.1"
    note: "Nieuwe sectie toegevoegd"
---

Je content hier in Markdown...
```

**Date-velden uitleg:**

- **`date_started`**: Datum waarop je begon met schrijven (altijd verplicht)
- **`date`**: Publicatiedatum wanneer post uit SOFA mode komt (verplicht als `draft: false`)
- **`draft`**: `true` voor SOFA mode (alleen zichtbaar met toggle), `false` voor gepubliceerd
- **`revisions`**: Array met latere updates na publicatie (optioneel, voor versietabel)

## Taal

- **Standaard**: Nederlands (`lang: nl`)
- **Uitzondering**: Quora posts blijven Engels (`lang: en`)

## Thema

Gebaseerd op [Adam Blog 2.0](https://github.com/the-mvm/the-mvm.github.io) door Armando Maynez.

![Screenshot ADAM 2.0 style initieel](plaatjes/screenshot-adam2.0-initial.png)

### Originele features

- Dark mode (automatisch)
- Responsive design
- Zoekfunctie
- Tags en categorieën
- Syntax highlighting
- MathJax ondersteuning

### Eigen uitbreidingen

Dit zijn de aanpassingen op het Adam 2.0 thema:

#### SOFA Mode 🛋️

"Start Often, Fail Always" - een filosofie voor het publiceren van draft posts.

- **Toggle in menu**: Wissel tussen gepubliceerde posts en drafts
- **Drafts publiek maar niet crawlbaar**: Zichtbaar via toggle, maar `robots.txt` en `noindex` meta tags voorkomen indexering door zoekmachines
- **Sortering per mode**: Gepubliceerde posts op publicatiedatum, drafts op startdatum

Zie: [Hoe deze blog begon - en het idee erachter](/hoe-deze-blog-begon-en-het-idee-erachter/)

#### Versietabel

Posts met `revisions` tonen automatisch een inklapbare versietabel bovenaan de post met alle datums in chronologische volgorde (`date_started` → `date` → `revisions`).

#### Archive pagina met thumbnails

De archive pagina toont nu thumbnails naast de post titels.

#### PDF download

Elke post heeft een "Download PDF" knop die client-side een PDF genereert.

#### Inklapbare details/summary blokken

Voor inklapbare stukken tekst gebruiken we native HTML `details` met een `summary` die inline Markdown ondersteunt:

```html
<details>
  <summary markdown="span">
    BOB-vragen voor …
  </summary>

  <!-- Inhoud hier in Markdown -->
  | Vraag | Antwoord |
  | ----- | -------- |
  | …     | …        |
</details>
```

- Waarom `markdown="span"`: Jekyll/Kramdown behandelt Markdown binnen `<summary>` anders. Met `markdown="span"` wordt Markdown inline gerenderd zonder ongewenste `<p>`-wrapping. Zie Jekyll issue: https://github.com/jekyll/jekyll/issues/9297
- CSS fix: om extra marge/wrapping tegen te gaan is in [assets/css/main.css](assets/css/main.css) de regel toegevoegd: `summary > p { display: inline; margin: 0; }`. Daarnaast krijgt `<details>` een grijze achtergrond en padding voor betere leesbaarheid.
- Plaatsing: in deze blogreeks staan de `details`-blokken onderaan de post (na de hoofdinhoud), consistent in deel 1, 2 en 3.

## Architectuurbeslissingen (ADRs)

Deze site is gebouwd met [Jekyll](https://jekyllrb.com/), een static site generator in Ruby. Het thema is gebaseerd op [Adam Blog 2.0](https://github.com/the-mvm/the-mvm.github.io) van Armando Maynez. Hosting gebeurt via GitHub Pages met automatische deployment via GitHub Actions.

De belangrijkste architectuurbeslissingen zijn gedocumenteerd in ADRs:

- [ADR-001: Meertaligheid](docs/adr-001-multi-language.md)
- [ADR-002: Jekyll met GitHub Pages](docs/adr-002-jekyll-github-pages.md)
- [ADR-003: Privacy-vriendelijke Analytics](docs/adr-003-analytics.md)
- [ADR-004: PDF Generatie](docs/adr-004-pdf-generation.md)

## Infrastructuur

- [CapRover Multi-Site Setup](docs/caprover-setup.md) - VPS configuratie voor Umami, Spring Boot apps, databases
