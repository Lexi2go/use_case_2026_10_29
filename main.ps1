[CmdletBinding()]
param()

$ErrorActionPreference = "Stop"

# Logging-Hilfsfunktion (Standard-Out mit Zeitstempel & Loglevel)
function Write-LogInfo {
    param([string]$Message)
    $timestamp = (Get-Date).ToString("yyyy-MM-dd HH:mm:ss")
    Write-Host "$timestamp [INFO] $Message"
}

function Write-LogError {
    param([string]$Message)
    $timestamp = (Get-Date).ToString("yyyy-MM-dd HH:mm:ss")
    [Console]::Error.WriteLine("$timestamp [ERROR] $Message")
}

# API-URL mit Default-Fallback via Umgebungsvariable
$apiUrl = if ($env:API_URL) { $env:API_URL } else { "https://jsonplaceholder.typicode.com/todos" }

function Invoke-HealthCheck {
    <#
    TODO für Bewerber:
    1. REST-API Daten abrufen ($apiUrl) & Fehler abfangen (try/catch mit Invoke-RestMethod)
    2. Offene Tasks (completed -eq $false) zählen und Quote berechnen
    3. Status ermitteln (>= 60% offen -> "WARNING", sonst "HEALTHY")
    4. Ergebnis als strukturiertes JSON ausgeben (z. B. PSCustomObject | ConvertTo-Json)
    #>
    Write-LogInfo "Starte Healthcheck für: $apiUrl"

    # --- DEIN CODE HIER ---

}

# Einstiegspunkt
Invoke-HealthCheck