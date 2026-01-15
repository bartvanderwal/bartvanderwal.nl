# ADR-006: Title Length Validation Plugin

## Status

Geaccepteerd (januari 2026)

## Context

Blog post titles moeten op één regel passen op desktop om de leesbaarheid te behouden. De maximale lengte voor een titel die op één regel past is **36 karakters**.

Tijdens het schrijven van de drieluik "ICT-onderwijs aanpassen voor AI" bleek de eerste blog een titel van 37 karakters te hebben: "ICT-onderwijs aanpassen voor AI (1/3)". Dit paste net niet op één regel.

**Probleem**: Er was geen geautomatiseerde controle die waarschuwt wanneer titels te lang zijn. Dit moet handmatig getest worden in de browser, wat foutgevoelig is.

## Decision

Een **Jekyll plugin** die tijdens de build automatisch waarschuwt wanneer post titles de maximale lengte overschrijden.

**Implementatie**: `_plugins/title_length_checker.rb`

```ruby
# Title Length Checker Plugin
# Warns when post titles exceed recommended character limit

module Jekyll
  class TitleLengthChecker < Generator
    safe true
    priority :low

    MAX_TITLE_LENGTH = 36

    def generate(site)
      site.posts.docs.each do |post|
        title = post.data['title']
        next unless title

        title_length = title.length

        if title_length > MAX_TITLE_LENGTH
          Jekyll.logger.warn "Title Length Warning:",
            "#{post.relative_path} has title length #{title_length} (max #{MAX_TITLE_LENGTH})"
          Jekyll.logger.warn "", "  Title: \"#{title}\""
        end
      end
    end
  end
end
```

## Rationale

### Waarom 36 karakters?

- **Empirisch getest**: "ICT-onderwijs aanpassen voor AI (1/3)" (37 chars) past net NIET op één regel
- **"ICT-onderwijs aanpassen aan AI (1/3)" (36 chars) past WEL op één regel
- Dit is getest in de browser developer toolbar op desktop resolutie

### Waarom een plugin in plaats van manuele controle?

| Aspect | Plugin (gekozen) | Manuele controle (afgewezen) |
|--------|------------------|------------------------------|
| **Consistentie** | Altijd tijdens build | Hangt af van discipline |
| **Snelheid** | Automatisch | Handmatig testen in browser |
| **Fouten** | Geen vergeten checks | Makkelijk te missen |
| **Feedback** | Direct bij build | Pas bij visual review |

### Waarom warning in plaats van error?

De plugin gebruikt `Jekyll.logger.warn` in plaats van een build error omdat:

- Lange titels zijn **ongewenst maar niet ongeldig**
- Soms kan een titel net iets langer zijn (bijvoorbeeld 38 karakters) als de woorden goed breken
- De auteur moet zelf kunnen beslissen of de waarschuwing serieus is
- Een error zou de build blokkeren, wat te streng is voor een style guideline

## Implementation

### Waar de plugin draait

- **Build time**: `bundle exec jekyll build` of `bundle exec jekyll serve`
- **Output**: Waarschuwingen in de terminal tijdens build
- **Priority**: `:low` - draait na andere generators, want het beïnvloedt de content niet

### Output voorbeeld

```
Title Length Warning: _posts/2026-01-10-ict-onderwijs-aanpassen-voor-ai-1-bewustwording.md has title length 37 (max 36)
                     Title: "ICT-onderwijs aanpassen voor AI (1/3)"
```

### Toekomstige uitbreidingen

Mogelijke verbeteringen (nog niet geïmplementeerd):

1. **Configureerbare limiet** via `_config.yml`:
   ```yaml
   title_length:
     max: 36
     warn_above: 30  # Soft warning
   ```

2. **Per-taal limieten** (Nederlands vs Engels kunnen verschillen):
   ```ruby
   MAX_TITLE_LENGTH = {
     'nl' => 36,
     'en' => 40
   }
   ```

3. **Subtitle check** - ook subtitles kunnen te lang zijn

## Consequences

### Positief

- **Proactieve feedback**: Je weet meteen tijdens schrijven of een titel te lang is
- **Consistentie**: Alle posts volgen dezelfde lengte-richtlijn
- **Developer experience**: Geen handmatige browser checks meer nodig
- **Zero-config**: Plugin werkt automatisch zonder configuratie

### Negatief

- **Extra build output**: Meer warnings in de terminal (maar alleen bij te lange titels)
- **Hardcoded limiet**: 36 karakters is nu in de code, niet configurabel
- **Alleen posts**: Checkt geen page titles of andere content

### Risico's en Mitigaties

| Risico | Impact | Mitigatie |
|--------|--------|-----------|
| False positives (titel past wel maar plugin waarschuwt) | Laag | Empirisch getest op 36 karakters |
| Plugin vertraagt build | Laag | Priority :low, simpele iteratie |
| Ontwikkelaars negeren warnings | Medium | Duidelijke output met bestandsnaam + titel |

## Alternatives Considered

### 1. CSS text-overflow ellipsis ❌

Titels automatisch afkappen met CSS:

```css
.post-title {
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
```

**Waarom afgewezen:**

- Lost het probleem niet op, verbergt het alleen visueel
- Lezers zien de volledige titel niet
- Geen incentive om betere titels te schrijven

### 2. Client-side JavaScript check ❌

Titel lengte checken in de browser met JavaScript.

**Waarom afgewezen:**

- Werkt alleen voor bezoekers, niet voor auteurs
- Te laat in het proces (pas bij visual review)
- Geen feedback tijdens schrijven

### 3. Pre-commit hook ❌

Git pre-commit hook die titels checkt voordat je commit.

**Waarom afgewezen:**

- Vereist lokale configuratie (niet automatisch via repo)
- Kan omzeild worden met `--no-verify`
- Jekyll plugin is eenvoudiger en always-on

### 4. Markdownlint rule ❌

Een custom markdownlint rule toevoegen voor titel lengte.

**Waarom afgewezen:**

- Markdownlint checkt alleen markdown syntax, niet front matter
- Vereist complexere configuratie
- Jekyll plugin is natuurlijker voor Jekyll-specifieke checks

## Related

- ADR-005: SOFA Mode (draft posts hebben ook titels die gecheckt worden)
- [_plugins/title_length_checker.rb](/_plugins/title_length_checker.rb)
- CLAUDE.md: Markdown style guide (andere content guidelines)

## References

- Jekyll. (z.d.). *Plugins*. Geraadpleegd van https://jekyllrb.com/docs/plugins/
- Jekyll. (z.d.). *Generators*. Geraadpleegd van https://jekyllrb.com/docs/plugins/generators/
