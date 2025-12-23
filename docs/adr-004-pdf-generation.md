# ADR-004: Client-side PDF Generatie

## Status

Geaccepteerd

## Context

Bezoekers willen blogposts kunnen opslaan als PDF. De browser print-functie (`window.print()`) is traag en geeft inconsistente resultaten. Een snellere, betrouwbare client-side oplossing is gewenst.

## Decision

**html2pdf.js** voor client-side PDF generatie.

## Alternatives

### 1. Browser Print (window.print())

- Geen extra dependencies
- **Nadeel**: Traag, inconsistent tussen browsers, gebruiker moet zelf "Save as PDF" kiezen

### 2. jsPDF

- Lightweight (~300KB)
- Programmatisch PDFs bouwen
- **Nadeel**: Vereist handmatig content opmaken, geen directe HTML-naar-PDF

### 3. pdfmake

- Declaratieve document definitie
- Goede typography
- **Nadeel**: Eigen markup syntax, niet direct HTML

### 4. html2pdf.js ✓

- Combineert html2canvas + jsPDF
- Directe HTML element naar PDF conversie
- Behoudt styling (CSS)
- ~500KB totaal
- Simpele API: `html2pdf().from(element).save()`

### 5. pdf-lib

- Low-level PDF manipulatie
- Kleine bundle
- **Nadeel**: Te low-level voor HTML conversie

### 6. Server-side (Puppeteer/wkhtmltopdf)

- Beste kwaliteit
- **Nadeel**: Server nodig, niet mogelijk op static site

## Implementation

```javascript
// Installatie via CDN
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>

// Gebruik
document.getElementById('download-pdf').addEventListener('click', function() {
  const element = document.querySelector('.page-content');
  const opt = {
    margin: 10,
    filename: document.title + '.pdf',
    image: { type: 'jpeg', quality: 0.98 },
    html2canvas: { scale: 2 },
    jsPDF: { unit: 'mm', format: 'a4', orientation: 'portrait' }
  };
  html2pdf().set(opt).from(element).save();
});
```

## Consequences

- Snelle PDF generatie (1-3 seconden)
- Consistente output in alle browsers
- Extra ~500KB JavaScript (lazy loaded)
- Styling wordt behouden
- Geen server-side dependency
