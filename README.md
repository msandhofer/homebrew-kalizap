# Homebrew Tap für Kalizap

Homebrew-Tap-Repository für [Kalizap](https://github.com/msandhofer/Kalizap) — eine native macOS-Voice-to-Text-App mit Apple SpeechAnalyzer und optionaler Korrektur durch Claude Haiku.

## Installation

```
brew tap msandhofer/kalizap
brew install --cask kalizap
```

## Voraussetzungen

- macOS 26+ (Tahoe), Apple Silicon
- Optional: Anthropic-API-Key für die Claude-Haiku-Korrektur. Ohne Key läuft die App in reiner Transkriptionsmodus — Korrektur fällt weg, alles andere funktioniert wie gewohnt. API-Key kann nach der Installation in den App-Settings hinterlegt werden.

## Update

```
brew upgrade --cask kalizap
```

## Deinstallation

```
brew uninstall --cask kalizap
brew untap msandhofer/kalizap
```

`brew uninstall` entfernt die App. Mit zusätzlichem `--zap` werden auch User-Daten aus `~/Library/Application Support/Kalizap` und Preferences gelöscht.

## Hinweis zur Code-Signatur

Kalizap ist nicht notarized (bewusste Entscheidung — kein Apple Developer Program). Die Installation via Homebrew-Cask entfernt das Quarantäne-Flag automatisch — die App startet danach ohne Gatekeeper-Prompt. Für Updates gilt das ebenso.

Bei Direct-Download-Installation (ohne Homebrew) muss der Quarantäne-Bypass manuell durchgeführt werden — siehe [Installation-Hinweise im Hauptrepo](https://github.com/msandhofer/Kalizap#installation).

## Lizenz

Cask-Formula in diesem Repo: MIT.
Die App selbst steht unter [PolyForm Noncommercial 1.0.0](https://github.com/msandhofer/Kalizap/blob/main/LICENSE).
