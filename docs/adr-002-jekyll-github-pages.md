# ADR-002: Jekyll met GitHub Pages

## Status

Geaccepteerd

## Context

Voor een persoonlijke blog is een eenvoudige, onderhoudsvriendelijke oplossing nodig. De site moet snel, veilig en goedkoop te hosten zijn.

## Decision

Jekyll als static site generator, gehost op GitHub Pages.

## Alternatives

### 1. Eigen VPS
- Volledige controle
- Zelf te configureren (nginx, Apache)
- **Nadeel**: Kosten (~€5-20/maand), onderhoud, security patches, overkill voor static site

### 2. WordPress (of ander CMS)
- Dynamische site met database
- **Nadeel**: Hosting kosten, security updates, traag, overkill voor blog

### 3. Hugo
- Snellere build dan Jekyll
- Go-based
- **Nadeel**: Minder native GitHub Pages integratie, kleinere community

### 4. Next.js / Gatsby
- React-based, moderne tooling
- **Nadeel**: Complexer, Node.js dependency, overkill voor eenvoudige blog

### 5. Jekyll + GitHub Pages ✓
- Native GitHub Pages ondersteuning
- Gratis hosting
- Markdown-based content
- Grote community en thema's
- Git-based workflow past bij developer

## Consequences

- **Gratis hosting** via GitHub Pages
- **Geen server onderhoud** - static files alleen
- **Versiebeheer** van content via Git
- **Snelle site** - geen database queries
- **Veilig** - geen aanvalsoppervlak van dynamische site
- **Vendor lock-in**: GitHub, maar makkelijk te migreren (static HTML + Markdown)
