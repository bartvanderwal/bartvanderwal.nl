# CapRover Multi-Site Setup

Documentatie voor het hosten van meerdere websites op één CapRover VPS.

## Overzicht

```
┌─────────────────────────────────────────────────────────┐
│                      CapRover VPS                        │
├─────────────────────────────────────────────────────────┤
│                                                          │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐     │
│  │   Umami     │  │ Spring Boot │  │ Spring Boot │     │
│  │  Analytics  │  │   App 1     │  │   App 2     │     │
│  └──────┬──────┘  └──────┬──────┘  └──────┬──────┘     │
│         │                │                │             │
│  ┌──────▼──────┐  ┌──────▼──────┐  ┌──────▼──────┐     │
│  │ PostgreSQL  │  │ SQL Server  │  │ PostgreSQL  │     │
│  │  (Umami)    │  │   (App 1)   │  │  (App 2)    │     │
│  └─────────────┘  └─────────────┘  └─────────────┘     │
│                                                          │
└─────────────────────────────────────────────────────────┘
```

## VPS Vereisten

- **Minimum**: 2 GB RAM, 1 vCPU, 40 GB SSD
- **Aanbevolen**: 4 GB RAM, 2 vCPU, 80 GB SSD (voor meerdere apps + databases)
- **OS**: Ubuntu 22.04 LTS
- **Providers**: Hetzner, DigitalOcean, Contabo, Strato

## CapRover Installatie

### 1. VPS Voorbereiden

```bash
# SSH naar je VPS
ssh root@your-vps-ip

# Update systeem
apt update && apt upgrade -y

# Installeer Docker
curl -fsSL https://get.docker.com | sh
```

### 2. CapRover Installeren

```bash
docker run -p 80:80 -p 443:443 -p 3000:3000 \
  -e ACCEPTED_TERMS=true \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /captain:/captain \
  caprover/caprover
```

### 3. DNS Configureren

Voeg deze DNS records toe bij je domein:

| Type | Naam | Waarde |
|------|------|--------|
| A | captain | `<VPS-IP>` |
| A | *.captain | `<VPS-IP>` |

### 4. CapRover Setup Voltooien

```bash
# Installeer CLI lokaal
npm install -g caprover

# Setup wizard
caprover serversetup
```

## Apps Deployen

### Umami Analytics (One-Click)

1. CapRover Dashboard → Apps → One-Click Apps/Databases
2. Zoek `umami_postgresql`
3. Configureer:
   - App Name: `umami`
   - PostgreSQL Version: `16`
   - Database Password: `<sterk-wachtwoord>`
4. Deploy

Toegang via: `https://umami.captain.jouwdomein.nl`

### Spring Boot Applicatie

#### Optie A: Via Dockerfile

Maak `captain-definition` in je project root:

```json
{
  "schemaVersion": 2,
  "dockerfilePath": "./Dockerfile"
}
```

Voorbeeld `Dockerfile`:

```dockerfile
FROM eclipse-temurin:21-jdk-alpine as build
WORKDIR /app
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src
RUN ./mvnw package -DskipTests

FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
```

#### Optie B: Via Pre-built JAR

```json
{
  "schemaVersion": 2,
  "dockerfileLines": [
    "FROM eclipse-temurin:21-jre-alpine",
    "WORKDIR /app",
    "COPY target/*.jar app.jar",
    "EXPOSE 8080",
    "ENTRYPOINT [\"java\", \"-jar\", \"app.jar\"]"
  ]
}
```

#### Deploy via CLI

```bash
cd /pad/naar/spring-boot-project
caprover deploy
```

### Database Setup

#### PostgreSQL (One-Click)

1. One-Click Apps → `postgres`
2. Configureer versie en wachtwoord
3. Interne URL: `srv-captain--db-postgres:5432`

#### SQL Server

SQL Server is niet beschikbaar als one-click app. Handmatige setup:

1. Maak nieuwe app: `sqlserver`
2. Zet "Has Persistent Data" aan
3. Deploy met deze `captain-definition`:

```json
{
  "schemaVersion": 2,
  "dockerfileLines": [
    "FROM mcr.microsoft.com/mssql/server:2022-latest",
    "ENV ACCEPT_EULA=Y",
    "ENV MSSQL_SA_PASSWORD=YourStrong!Password",
    "ENV MSSQL_PID=Express",
    "EXPOSE 1433"
  ]
}
```

4. Voeg persistent volume toe: `/var/opt/mssql`
5. Interne URL: `srv-captain--sqlserver:1433`

## Environment Variables

Stel per app in via CapRover Dashboard → App Config:

### Spring Boot + PostgreSQL

```
SPRING_DATASOURCE_URL=jdbc:postgresql://srv-captain--db-postgres:5432/mydb
SPRING_DATASOURCE_USERNAME=postgres
SPRING_DATASOURCE_PASSWORD=<wachtwoord>
```

### Spring Boot + SQL Server

```
SPRING_DATASOURCE_URL=jdbc:sqlserver://srv-captain--sqlserver:1433;databaseName=mydb
SPRING_DATASOURCE_USERNAME=sa
SPRING_DATASOURCE_PASSWORD=<wachtwoord>
```

## SSL Certificaten

CapRover regelt automatisch Let's Encrypt certificaten:

1. App → HTTP Settings
2. Enable HTTPS
3. Force HTTPS redirect

## Backups

### Database Backup Script

```bash
#!/bin/bash
# backup.sh - Run via cron

DATE=$(date +%Y%m%d)
BACKUP_DIR=/captain/backups

# PostgreSQL
docker exec $(docker ps -qf "name=srv-captain--db-postgres") \
  pg_dumpall -U postgres > $BACKUP_DIR/postgres_$DATE.sql

# SQL Server
docker exec $(docker ps -qf "name=srv-captain--sqlserver") \
  /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 'YourPassword' \
  -Q "BACKUP DATABASE mydb TO DISK='/var/opt/mssql/backup/mydb_$DATE.bak'"
```

### Cronjob

```bash
crontab -e
# Dagelijks om 3:00
0 3 * * * /root/backup.sh
```

## Monitoring

CapRover biedt basis monitoring via het dashboard. Voor uitgebreidere monitoring:

- **Netdata**: One-click app voor systeem monitoring
- **Umami**: Voor website analytics (al geïnstalleerd)

## Voorbeeld Configuratie

| App | Domein | Database | RAM |
|-----|--------|----------|-----|
| Umami | umami.captain.example.nl | PostgreSQL | 256MB |
| Spring App 1 | app1.example.nl | SQL Server | 512MB |
| Spring App 2 | app2.example.nl | PostgreSQL (shared) | 512MB |
| PostgreSQL | - | - | 512MB |
| SQL Server | - | - | 1GB |

**Totaal**: ~2.8 GB RAM → 4 GB VPS aanbevolen
