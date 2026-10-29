import os
import sys
import logging

# Logging-Setup (Standard-Out)
logging.basicConfig(level=logging.INFO, format="%(asctime)s [%(levelname)s] %(message)s")

API_URL = os.getenv("API_URL")
API_TIMEOUT = int(os.getenv("API_TIMEOUT"))
WARNING_THRESHOLD = float(os.getenv("WARNING_THRESHOLD"))


def run_healthcheck():
    """
    TODO für Bewerber:
    1. REST-API Daten abrufen (API_URL) & Fehler abfangen
    2. Offene Tasks (completed: false) zählen und Quote berechnen
    3. Status ermitteln (>= 60% offen -> "WARNING", sonst "HEALTHY")
    4. Ergebnis als strukturiertes JSON ausgeben
    """
    logging.info(f"Starte Healthcheck für: {API_URL}")
    
    # --- DEIN CODE HIER ---
    
    pass

if __name__ == "__main__":
    run_healthcheck()