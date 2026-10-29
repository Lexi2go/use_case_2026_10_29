#!/usr/bin/env bash
set -euo pipefail

# Logging-Hilfsfunktion (Standard-Out mit Zeitstempel & Loglevel)
log_info() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') [INFO] $1"
}

log_error() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') [ERROR] $1" >&2
}

# API-URL mit Default-Fallback via Umgebungsvariable
API_URL="${API_URL:-https://jsonplaceholder.typicode.com/todos}"

run_healthcheck() {
    : '
    TODO für Bewerber:
    1. REST-API Daten abrufen (API_URL) & Fehler abfangen (z. B. via curl)
    2. Offene Tasks (completed: false) zählen und Quote berechnen (z. B. via jq / bc / awk)
    3. Status ermitteln (>= 60% offen -> "WARNING", sonst "HEALTHY")
    4. Ergebnis als strukturiertes JSON ausgeben
    '
    log_info "Starte Healthcheck für: ${API_URL}"

    # --- DEIN CODE HIER ---

    return 0
}

# Einstiegspunkt
run_healthcheck