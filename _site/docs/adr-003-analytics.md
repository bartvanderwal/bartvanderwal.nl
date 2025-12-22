# ADR-003: Privacy-vriendelijke Analytics

## Status

Geaccepteerd

## Context

Website analytics zijn nuttig voor inzicht in bezoekers, maar Google Analytics heeft privacy-bezwaren (tracking, cookies, data naar VS). Een privacy-by-design oplossing is gewenst.

## Decision

**Umami** self-hosted op CapRover met PostgreSQL database.

Setup via CapRover one-click app `umami_postgresql`:
- Zie: https://docs.umami.is/docs/guides/running-on-caprover

## Alternatives

### 1. Google Analytics
- Gratis, uitgebreide features
- **Nadeel**: Privacy-onvriendelijk, cookies, GDPR-issues, data naar VS

### 2. Geen analytics
- Maximale privacy
- GitHub Insights geeft basis traffic
- **Nadeel**: Geen inzicht in content populariteit

### 3. Cloudflare Web Analytics
- Gratis, geen cookies
- **Nadeel**: Beperkte features, vendor lock-in Cloudflare

### 4. Plausible (hosted)
- Privacy-first, EU-hosted
- **Nadeel**: €9/maand kosten

### 5. Umami Cloud (hosted)
- Gratis tier (10K events/maand)
- **Nadeel**: Afhankelijk van externe dienst

### 6. Umami self-hosted op CapRover ✓
- Open source, volledige controle
- PostgreSQL database
- Privacy-vriendelijk, geen cookies
- GDPR-compliant
- One-click deploy via CapRover
- **Nadeel**: VPS nodig (maar al beschikbaar)

## Consequences

- Volledige controle over analytics data
- Geen tracking cookies nodig
- GDPR-compliant zonder cookie banner
- Data blijft op eigen infrastructuur
- Onderhoud: updates via CapRover
- Bestaande VPS wordt hergebruikt
