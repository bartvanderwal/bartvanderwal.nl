---
layout: post
title: "Walking Skeleton: End-to-End Validatie"
date: 2024-12-18
lang: nl
canonical_url: "https://aim-ene.github.io/pexe/docs/Projectresultaat/WalkingSkeleton"
---

*Origineel gepubliceerd op [PEXE](https://aim-ene.github.io/pexe/docs/Projectresultaat/WalkingSkeleton)*

Een Walking Skeleton representeert een minimale, end-to-end functionele implementatie van een systeem. Volgens Martin Fowler is het "a minimal implementation of a system that is functional from end to end."

## Wat is een Walking Skeleton?

Een Walking Skeleton verschilt van een paper prototype door de gehele software architectuur te valideren in plaats van alleen UI design.

Kernkenmerken:
- Skeletversie met alleen bare-bones functionaliteit
- Uitvoerbaar en operationeel
- Demonstreert integratie over alle systeemcomponenten
- Valideert architectuurassumpties vroeg

De aanpak voorkomt verspilde moeite aan implementaties die later fundamentele wijzigingen nodig blijken te hebben.

## Walking Skeleton vs. MVP

Deze concepten dienen verschillende doelen:

**Walking Skeleton:**
- Technisch proof of concept
- Valideert systeemcomponent integratie
- Minimale feature set maar architectureel compleet
- Gebouwd voor interne validatie, niet klantgebruik

**MVP (Minimum Viable Product):**
- Business-gedreven aanpak
- Levert genoeg features voor early adopters
- Verzamelt gebruikersfeedback
- Bredere scope dan Walking Skeleton

Het onderscheid is belangrijk: een Walking Skeleton test technische haalbaarheid en component koppeling voordat teams onafhankelijk verder gaan met hun werkpakketten.

## Full-Stack Implementatie

Walking Skeletons spannen typisch complete technology stacks:

- **Front-end:** Desktop UI, web interface, mobile app, of CLI
- **Back-end:** Core business logica
- **Database:** Data persistentie laag
- **Integratie:** Alle lagen communicerend end-to-end

Dit bewijst vooral waarde bij niet-standaard interfaces (GraphQL, gRPC, RabbitMQ, Kafka) of onconventionele front-end technologieën (Electron, Tauri).

## User Story Map Backbone vs. Code Backbone

Twee gerelateerde maar verschillende concepten:

**USM Backbone:**
- Vangt essentiële systeemfeatures
- Documenteert ondersteunde gebruikersactiviteiten
- Gevalideerd met stakeholders

**Code Backbone:**
- Technische implementatie van USM elementen
- Adresseert architectureel risicovolle activiteiten
- Integreert alle major componenten
- Demonstreert haalbaarheid

De code backbone operationaliseert de features geïdentificeerd in de User Story Map.

## Conceptual Integrity

Anders dan losse proof-of-concepts demonstreert een Walking Skeleton grotere integratie:

- Code compileert samen als unified product
- Consistente code kwaliteit over front-end en back-end
- Unified build processen en linting standaarden
- Gebruikers ervaren consistentie over systeemonderdelen

## Kernbronnen

- Martin Fowler: Foundational minimal implementation concept
- 67 Bricks team: Definition en rationale voor Walking Skeletons
- Czubajewski (2024): Distinction from MVP
