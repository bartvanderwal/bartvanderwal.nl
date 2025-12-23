---
layout: post
title: "Continuous Integration"
date: 2024-12-19
lang: nl
tags: [devops, ci, software]
img: posts/devops-infinity-loop.png
canonical_url: "https://aim-cnp.github.io/pwac/workshops/integratie"
---

*Origineel gepubliceerd op [PWAC](https://aim-cnp.github.io/pwac/workshops/integratie)*

Deze post behandelt Continuous Integration (CI) en CI/CD pipelines, met focus op Git branching strategieën en GitHub Actions implementatie voor full-stack applicaties.

![DevOps Infinity Loop](/assets/images/ci-workshop/devops-infinity-loop.png)

## Kernvereisten

### A. Kennis
Begrip van CI/CD concepten en pipeline architectuur.

### B. Aanpak
- Team gebruikt GitHub Flow voor code en unit tests
- Implementatie van SHORT-lived feature branches
- Minimaal dagelijkse integratie (Martin Fowler standaarden)

### C. Pipeline Configuratie
Werkende CI/CD pipeline met minimaal drie stages:
- **Lint** (code kwaliteitsanalyse)
- **Build** (compilatie)
- **Test** (geautomatiseerd testen)

## Continuous Integration Definitie

Martin Fowler beschrijft CI als: *"team members merge changes into codebase together with colleagues' changes at least daily,"* met verificatie door *"automated build (including test) to detect integration errors quickly."*

Het Netflix principe stelt: *"Do more painful things more often!"* - frequente integratie vermindert frictie.

![If it hurts, do it more often](/assets/images/ci-workshop/if-it-hurts.png)

## GitHub Actions Pipeline Setup

### Minimaal Java Pipeline Voorbeeld

```yaml
steps:
  - uses: actions/checkout@v4
  - name: Set up JDK 17
    uses: actions/setup-java@v4
    with:
      java-version: '17'
      distribution: 'temurin'
      cache: maven
  - name: Build with Maven
    run: mvn clean install
```

### Node.js/React Frontend Pipeline

```yaml
- name: Set up Node.js
  uses: actions/setup-node@v4
  with:
    node-version: '21'
    cache: npm
    cache-dependency-path: ./frontend/package-lock.json

- name: Install and lint
  working-directory: ./frontend
  run: |
    npm install
    npm run lint
    npm run build
    npm test
```

## Linting & Static Analysis

### Tools per Stack

| Technologie | Tool | Configuratie |
|------------|------|--------------|
| JavaScript/React | ESLint | `.eslintrc` of `package.json` |
| Java | Maven Checkstyle | `checkstyle.xml` in project root |

### Richtlijnen
- Streef naar nul errors en warnings
- Pas ignore rules toe op configuratie niveau
- Vermijd inline code suppressions
- Prioriteer feature delivery boven perfecte linting

## Test Piramide

![Test Piramide](/assets/images/ci-workshop/test-piramide.png)

Van basis naar top:
1. **Unit Tests** (grootste volume)
2. **Integration Tests**
3. **Component Tests**
4. **End-to-End Tests** (kleinste volume)

### Maven Test Commands
- **`mvn test`**: Draait alleen unit tests (Surefire)
- **`mvn verify`**: Draait unit tests + integration tests (Failsafe)

## Git Workflow Strategieën

![GitHub Flow](/assets/images/ci-workshop/github-flow.png)

### GitHub Flow (Aanbevolen)
1. Creëer SHORT-lived feature branch van main
2. Commit en push regelmatig
3. Open pull request
4. Pipeline draait automatische checks
5. Team reviewt
6. Merge naar main

### Kernprincipe
Fail fast - zet snelle checks (lint) vóór dure operaties (build/test).

## Veelvoorkomende Valkuilen

1. **Ongeteste processen automatiseren**: Verifieer commando's eerst lokaal
2. **Long-lived branches**: Verhoogt integratie complexiteit
3. **Te weinig ignore rules configureren**: Creëert ruis, waardoor echte issues gemist worden
4. **Main branch breken**: Laat pipeline altijd valideren voor merge

## Bronnen

- [GitHub Actions: Java with Maven](https://docs.github.com/en/actions/use-cases-and-examples/building-and-testing/building-and-testing-java-with-maven)
- [GitHub Actions: Node.js](https://docs.github.com/en/actions/tutorials/build-and-test-code/nodejs)
- Fowler, M. (2024) "Continuous Integration"
