# TODO für Bewerber:
# 1. Passendes Base-Image wählen
# 2. Arbeitsverzeichnis & Dependencies einrichten
# 3. Quellcode kopieren
# 4. Security: Non-Root User setzen
# 5. CMD definieren

FROM python:3.11-slim

WORKDIR /app

# --- DEIN DOCKERFILE HIER ---

CMD ["python", "main.py"]