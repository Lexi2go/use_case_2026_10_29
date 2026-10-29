# Automated Health-Check & Service-Monitoring Pipeline

Dieses Repository dient als Grundlage und Vorlage für die 60-minütige Fallstudie im Rahmen des Auswahlverfahrens für die Position **Automation Engineer (m/w/d)**.

---

## 📋 Szenario & Aufgabenstellung

Ein interner Service (z. B. eine API für Infrastruktur-Status) soll automatisiert überwacht, die Daten verarbeitet und der Deployment-Prozess abgesichert werden.

### Deine Aufgaben (60 Minuten):

### 1. Automation & Data Fetching (Skript / Service)

> 💡 **Freie Wahl der Skriptsprache:** Du kannst diese Aufgabe in der Programmier- bzw. Skriptsprache deiner Wahl lösen! Im Repository findest du Vorlagen für:
> * **Python:** `main.py`
> * **Bash / Shell:** `main.sh`
> * **PowerShell:** `main.ps1`
> 
> Nutze einfach die Vorlage/Sprache, mit der du am besten vertraut bist (oder erstelle eine eigene).

* **Skripterstellung:** Implementiere die Automatisierungslogik in deiner gewählten Sprache (z. B. `main.py`, `main.sh` oder `main.ps1`).
* **API-Abruf:** Rufe Daten von einer REST-API ab (z. B. `https://jsonplaceholder.typicode.com/todos` oder eine Mock-API) inkl. robustem Error Handling / Timeout-Management.
* **Transformation & Aggregation:** Filtere und transformiere die Daten (z. B. Identifikation von fehlerhaften/unerledigten States, Berechnung von Quoten) und ermittle einen Status (`HEALTHY` vs. `WARNING`).
* **Output:** Erstelle einen strukturierten JSON-Report oder Metrics-Payload über `stdout` / Datei.

### 2. Containerisierung & CI/CD-Workflow

* **Dockerfile:** Schreibe ein kompaktes und sicheres Dockerfile für deinen Service/Skript passend zu deiner gewählten Sprache/Runtime (schlankes Base-Image, Non-Root-User, Best Practices).
* **GitHub Actions Pipeline:** Erstelle/erweitere die Workflow-Datei (`.github/workflows/main.yml` bzw. `.github/workflow/main.yaml`), die bei einem `push` auf den `main`-Branch automatisch:
  * Den Code prüft und testet (Syntax-Check / Unit Test / Linter).
  * Das Docker-Image baut.
  * Einen simulierten Deployment-Step oder eine Benachrichtigung (z. B. Webhook/Status-Echo) triggert.

### 3. Architektur-, Orchestrierungs- & Observability-Konzept (Stichpunkte/Skizze)

Beantworte kurz die folgenden konzeptionellen Fragen (in der README oder als separate Notiz/Whiteboard):

1. **Monitoring & Observability:** Wie würdest du diesen Service in eine moderne Monitoring-Landschaft (z. B. Grafana / Prometheus / OpenTelemetry / Loki) einbinden?
2. **Secret Management:** Wie gehst du mit Secrets (z. B. API-Tokens, Webhook-URLs, Credentials) im CI/CD-Prozess und zur Laufzeit sicher um?
3. **Orchestrierung:** Wie bettest du den Service auf einer Orchestrierungs-Plattform ein (z. B. Rundeck, n8n, Kubernetes CronJob, StackStorm)?

---

## 📂 Projektstruktur

```text
.
├── .github/
│   └── workflow/
│       └── main.yaml        # GitHub Actions CI/CD Pipeline
├── Dockerfile               # Container-Definition für den Health-Check Service
├── main.ps1                 # PowerShell Automation- & Health-Check Skript
├── main.py                  # Python Automation- & Health-Check Skript
├── main.sh                  # Bash/Shell Automation- & Health-Check Skript
├── requirements.txt         # Python-Abhängigkeiten (bei Python-Nutzung)
└── README.md                # Dokumentation & Aufgabenstellung
```

---

## 🚀 Schnellstart (Lokal)

### Voraussetzungen

Je nach gewählter Skriptsprache:
* **Python:** Python 3.11+
* **Bash:** Bash, `curl`, `jq`
* **PowerShell:** PowerShell (`pwsh`) 7+
* **Docker:** Optional für lokale Container-Tests

### Lokale Ausführung

Wähle die passende Ausführung für deine gewählte Skriptsprache:

#### Option A: Python (`main.py`)
```bash
# 1. Virtuelle Umgebung erstellen & Abhängigkeiten installieren
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt

# 2. Skript ausführen
python main.py
```

#### Option B: Bash (`main.sh`)
```bash
chmod +x main.sh
./main.sh
```

#### Option C: PowerShell (`main.ps1`)
```powershell
pwsh ./main.ps1
```

### Docker Ausführung

*(Passe das `Dockerfile` ggf. an deine gewählte Sprache / Runtime an)*

```bash
# Image bauen
docker build -t healthcheck-service:latest .

# Container starten
docker run --rm healthcheck-service:latest
```

---

## 📝 Konzept-Dokumentation (Notizen / Antworten)

### 1. Monitoring & Observability

* **Metriken & Tracing:** ...
* **Logging:** ...

### 2. Secret Management

* **CI/CD Pipeline:** ...
* **Runtime:** ...

### 3. Orchestrierung & Scheduling

* **Plattform-Integration:** ...
