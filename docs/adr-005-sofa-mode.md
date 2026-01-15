# ADR-005: SOFA Mode - Draft Posts Toggle

## Status

Geaccepteerd (december 2024)

## Context

Als docent en blogger wil ik ideeën publiek delen *tijdens* het schrijfproces, niet alleen na voltooing. Dit past bij de "learning in public" filosofie en bij de iteratieve aard van moderne software development.

Maar: incomplete of experimentele posts moeten niet via zoekmachines gevonden worden. Ze zijn bedoeld voor geïnteresseerde bezoekers die bewust kiezen om draft content te zien.

**SOFA** staat voor "Start Often, Fail Always" - een variant op "Start Often, Finish rArely". Het erkent dat veel projecten en ideeën nooit "af" zijn, en dat dat ok is.

## Decision

Een **toggle-based "SOFA mode"** in het menu waarmee bezoekers kunnen kiezen tussen:

- **Standaard mode**: Alleen gepubliceerde posts (`draft: false`)
- **SOFA mode**: Alle posts, inclusief drafts (`draft: true`)

Draft posts zijn:

- **Publiek toegankelijk** via directe URL
- **Zichtbaar in lijst** wanneer SOFA mode actief is
- **NIET in sitemap.xml** (dus niet indexeerbaar via zoekmachines)
- **NIET in RSS feed**
- Gemarkeerd met `<meta name="robots" content="noindex, nofollow">`

## Rationale

### Waarom toggle-based in plaats van aparte pagina?

**Gekozen**: Toggle verandert de lijst view dynamisch

**Afgewezen alternatief**: Aparte `/drafts/` pagina

| Aspect | Toggle (gekozen) | Aparte pagina (afgewezen) |
|--------|------------------|---------------------------|
| **Gebruikerservaring** | Eén lijst, filter aan/uit | Twee lijsten, switch tussen pages |
| **Ontdekbaarheid** | Duidelijk in menu | Minder zichtbaar |
| **Technische complexiteit** | Client-side JavaScript filter | Server-side routing vereist |
| **SEO risico** | Laag (zelfde pagina) | Hoger (`/drafts/` crawlbaar) |

### Waarom publiek maar niet crawlbaar?

**Gekozen**: Posts zijn toegankelijk via directe URL, maar niet via Google

**Alternatief overwogen**: Volledig privé (password protected)

| Aspect | Publiek maar niet crawlbaar (gekozen) | Privé (afgewezen) |
|--------|---------------------------------------|-------------------|
| **Delen** | Link delen werkt direct | Wachtwoord delen vereist |
| **Feedback** | Studenten en collega's kunnen lezen | Beperkte toegang |
| **Open source filosofie** | Past bij transparantie | Past niet bij open culture |
| **Implementatie** | Simpel (`noindex` meta tag) | Vereist authentication |

### Waarom NIET in sitemap en RSS?

Draft posts zijn experimenteel en kunnen significant veranderen. Ze horen niet in feeds die "stabiele" content verwachten.

## Implementation

### Front matter velden

```yaml
---
layout: post
title: "Post Titel"
date_started: 2024-12-23    # Start van schrijven
date: 2024-12-26             # Publicatiedatum (uit SOFA mode)
draft: true                  # true = SOFA mode, false = gepubliceerd
---
```

### Meta tags (in `_layouts/post.html`)

```liquid
{% if page.draft %}
  <meta name="robots" content="noindex, nofollow">
{% endif %}
```

### Sitemap exclusie (in `sitemap.xml`)

```liquid
{% for post in site.posts %}
  {% unless post.draft %}
    <url>
      <loc>{{ post.url | absolute_url }}</loc>
      <lastmod>{{ post.date | date_to_xmlschema }}</lastmod>
    </url>
  {% endunless %}
{% endfor %}
```

### Robots.txt exclusie (in `robots.txt`)

```liquid
---
layout: null
---
User-agent: *
Disallow:
{% for post in site.posts %}{% if post.draft %}
Disallow: {{ post.url }}{% endif %}{% endfor %}

Sitemap: {{ site.url }}/sitemap.xml
```

Draft posts krijgen een `Disallow` regel zodat zoekmachines ze niet crawlen, zelfs als ze via een directe link gevonden worden.

### JavaScript toggle (in `assets/js/sofa-toggle.js`)

```javascript
// Toggle SOFA mode on/off
document.getElementById('sofa-toggle').addEventListener('change', function() {
  var enabled = this.checked;
  localStorage.setItem('sofa-mode', enabled);

  document.querySelectorAll('.post-list-item').forEach(function(item) {
    if (item.dataset.draft === 'true') {
      item.style.display = enabled ? 'block' : 'none';
    }
  });
});

// Restore state on page load
if (localStorage.getItem('sofa-mode') === 'true') {
  document.getElementById('sofa-toggle').checked = true;
  // Trigger change event to show drafts
}
```

## Sortering

- **Gepubliceerde posts**: Gesorteerd op `date` (publicatiedatum)
- **Draft posts**: Gesorteerd op `date_started` (startdatum)

Dit betekent dat recente drafts bovenaan verschijnen in SOFA mode, terwijl gepubliceerde posts hun originele volgorde behouden.

## Consequences

### Positief

- **Transparantie**: Lezers zien het schrijfproces
- **Feedback**: Vroege feedback mogelijk op incomplete ideeën
- **Flexibiliteit**: Posts kunnen iteratief verbeteren zonder "launch" stress
- **SEO safe**: Geen risico op duplicate content of incomplete posts in Google

### Negatief

- **Kwaliteitsperceptie**: Bezoekers kunnen incomplete drafts zien (maar dit is een bewuste keuze)
- **Extra veld**: `draft: true/false` moet in alle posts
- **JavaScript dependency**: Toggle werkt niet zonder JS (maar degradeert naar "alles tonen")

### Risico's en Mitigaties

| Risico | Impact | Mitigatie |
|--------|--------|-----------|
| Draft posts per ongeluk in Google index | Hoog | `noindex` meta tag + sitemap exclusie + robots.txt |
| Verwarring over wat "draft" betekent | Medium | Duidelijke labels ("SOFA MODE" in menu) |
| JavaScript disabled users zien alles | Laag | Acceptabel - progressive enhancement |

## Alternatives Considered

### 1. Jekyll's Built-in `published: false` ❌

Jekyll heeft een ingebouwd `published: false` veld dat posts volledig verbergt.

**Waarom afgewezen:**

- Posts zijn NIET publiek toegankelijk via URL
- Past niet bij "learning in public" filosofie
- Geen toggle mogelijk (posts zijn er niet)

### 2. Separate Branch voor Drafts ❌

Drafts in een `draft` branch houden, alleen `main` branch deployen.

**Waarom afgewezen:**

- Vereist twee deployments (main + draft branch)
- Complexer workflow
- Moeilijker om links te delen

### 3. Password Protected Posts ❌

Authentication layer voor draft posts.

**Waarom afgewezen:**

- Implementatie complex voor static site
- Niet compatibel met GitHub Pages
- Past niet bij open culture

### 4. Aparte Subdomain (drafts.bartvanderwal.nl) ❌

Drafts op een apart subdomein.

**Waarom afgewezen:**

- Vereist separate deployment
- SEO risico (subdomains worden wel gecrawled)
- Complexere configuratie

## Future Considerations

### Versioning van Draft naar Published

Wanneer een draft gepubliceerd wordt (`draft: false`), zou de versiegeschiedenis automatisch gegenereerd kunnen worden:

```yaml
---
draft: false
date_started: 2024-12-23
date: 2024-12-26  # Publicatiedatum
revisions:
  - date: 2024-12-26
    version: "1.0"
    note: "Eerste publicatie (uit SOFA mode)"
---
```

Dit zou een Jekyll plugin kunnen zijn die dit automatisch genereert bij build time.

## Related

- ADR-002: Jekyll + GitHub Pages (static site, geen server-side auth mogelijk)
- README.md: SOFA Mode documentatie
- Blog post: ["Hoe deze blog begon - en het idee erachter"](/hoe-deze-blog-begon/)

## References

- Dozens. (z.d.). *SOFA: Start Often, Finish rArely*. Geraadpleegd van https://tilde.town/~dozens/sofa/
- Google. (z.d.). *Block Search indexing with 'noindex'*. Geraadpleegd van https://developers.google.com/search/docs/crawling-indexing/block-indexing
