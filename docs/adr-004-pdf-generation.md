# ADR-004: Client-side PDF Generatie

## Status

Gewijzigd (december 2024)

## Context

Bezoekers willen blogposts kunnen opslaan als PDF. Een snelle, betrouwbare client-side oplossing is gewenst zonder server-side dependencies.

## Decision

**pdfmake** voor client-side PDF generatie.

Oorspronkelijk werd html2pdf.js gekozen, maar dit bleek fundamenteel onbetrouwbaar te zijn (zie "Afgewezen Alternatieven").

## Rationale

pdfmake genereert PDFs vanuit een declaratieve document definitie (JSON), niet door HTML te renderen. Dit vermijdt de rendering-problemen die html2canvas-gebaseerde oplossingen hebben.

Voordelen:

- Betrouwbare tekst rendering (geen canvas issues)
- Goede typography en layout controle
- Ingebouwde fonts (geen font-loading problemen)
- Snelle generatie (~1 seconde)
- ~1MB totaal (lazy loaded)

Nadelen:

- Vereist HTML-naar-pdfmake conversie
- Complexe HTML structuren (nested lists, inline styling) vereisen extra parsing

## Afgewezen Alternatieven

### 1. html2pdf.js ❌

**Oorspronkelijke keuze, nu afgewezen.**

html2pdf.js combineert html2canvas + jsPDF. De belofte is simpel: geef een HTML element en krijg een PDF.

**Waarom het faalde:**

1. **Canvas hoogte 0**: Bij `position: absolute` berekent html2canvas geen element-hoogte
2. **Tekst niet zichtbaar**: Zelfs met correcte hoogte rendert tekst niet naar canvas
   - Alleen list bullets (`·`) verschenen in de PDF
   - Tekst was wel aanwezig in DOM (`wrapper.innerText` toonde correcte content)
3. **Font rendering issues**: html2canvas heeft bekende problemen met web fonts
4. **Dark mode interference**: CSS variabelen en `!important` overrides werkten niet consistent

**Geteste fixes die faalden:**

- `position: fixed` i.p.v. `absolute` (canvas hoogte opgelost, tekst nog steeds onzichtbaar)
- Explicit `height` en `windowHeight` in html2canvas opties
- `!important` op alle style properties
- `-webkit-text-fill-color` override
- System fonts (Arial) i.p.v. web fonts
- `setTimeout` voor render delay

**Conclusie**: html2canvas is fundamenteel onbetrouwbaar voor tekst rendering. Het project heeft 500+ open issues op GitHub gerelateerd aan rendering problemen.

### 2. Browser Print (window.print()) ❌

- Geen extra dependencies
- **Nadeel**: Traag op macOS, vereist gebruikersactie om "Save as PDF" te kiezen

### 3. jsPDF ❌

- Lightweight (~300KB)
- **Nadeel**: Handmatig content positioneren, geen HTML conversie

### 4. pdf-lib ❌

- Low-level PDF manipulatie
- **Nadeel**: Te low-level voor HTML conversie

### 5. Server-side (Puppeteer/wkhtmltopdf) ❌

- Beste kwaliteit
- **Nadeel**: Server nodig, niet mogelijk op static Jekyll site

## Implementation

```javascript
// Lazy load pdfmake van CDN
var script1 = document.createElement('script');
script1.src = 'https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js';
script1.onload = function() {
  var script2 = document.createElement('script');
  script2.src = 'https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js';
  script2.onload = generatePdf;
  document.head.appendChild(script2);
};
document.head.appendChild(script1);

function generatePdf() {
  var docDefinition = {
    content: [
      { text: 'Titel', style: 'header' },
      { text: 'Paragraaf tekst hier...' },
      { ul: ['Item 1', 'Item 2'] }
    ],
    styles: {
      header: { fontSize: 22, bold: true }
    }
  };
  pdfMake.createPdf(docDefinition).download('document.pdf');
}
```

## HTML naar pdfmake Conversie

De implementatie bevat een `htmlToPdfmake()` functie die DOM elementen converteert naar pdfmake format:

| HTML Element | pdfmake Output |
|--------------|----------------|
| `<h1>`, `<h2>`, `<h3>` | `{ text: '...', style: 'h1' }` |
| `<p>` | `{ text: '...' }` |
| `<ul>`, `<ol>` | `{ ul: [...] }` |
| `<blockquote>` | `{ text: '...', italics: true, margin: [...] }` |
| `<table>` | `{ table: { body: [...] } }` |
| `<a>` | `{ text: '...', link: 'url', color: '...' }` |

## Consequences

- Betrouwbare PDF generatie met leesbare tekst
- ~1MB JavaScript (lazy loaded, alleen bij klik)
- Geen pixel-perfect HTML reproductie (maar wel correcte content)
- Geen server-side dependency
- Automatische tests mogelijk (PDF bevat extracteerbare tekst)

## Test Coverage

Playwright tests verifiëren:

1. PDF wordt gegenereerd en gedownload
2. PDF bevat extracteerbare tekst (niet alleen afbeeldingen)
3. PDF button aanwezig op alle blog posts

```bash
npm run test:pdf
```

## Toekomstige Overweging: Build-time PDF Generatie

Een betere aanpak zou zijn om PDFs te genereren tijdens build-time vanuit de Markdown bronbestanden:

| Client-side (huidig) | Build-time (toekomstig) |
|----------------------|-------------------------|
| ~150 regels JS voor HTML→pdfmake | Directe .md → .pdf met Pandoc |
| 1MB JavaScript lazy loaded | Geen client-side JS nodig |
| Elke klik genereert opnieuw | Pre-generated, instant download |
| Parsing van complexe HTML | Markdown is al gestructureerd |

**Mogelijke implementatie:**

```ruby
# _plugins/pdf_generator.rb
Jekyll::Hooks.register :posts, :post_write do |post|
  system("pandoc #{post.path} -o #{pdf_path} --pdf-engine=xelatex")
end
```

**Blocker:** GitHub Pages ondersteunt geen custom plugins. Zou een GitHub Actions workflow vereisen die Pandoc + LaTeX installeert en PDFs genereert als build artifact.
