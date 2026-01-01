# =========================================================================================
# SCRIPT : Update-Journal-Directives.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Enregistre les nouvelles directives méthodologiques pour la suite du projet
# =========================================================================================

$JournalPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Date = Get-Date -Format "dd/MM/yyyy HH:mm"

$LogEntry = @"

---
## 📅 Journal de bord - $Date
### 🛠️ Nouvelles Directives Méthodologiques
- **Flux de travail par article** : 
    1. Analyse/Correction (Standard Pro).
    2. Audit des liens d'affiliation Amazon.
    3. Création des prompts images (1 header 16:9 + 2/3 illustrations 3:2).
- **Consignes visuelles** : Interdiction de génération directe. Style "Artist Grain" maintenu. Ratio 16:9 pour les headers, 3:2 pour le corps du texte.
- **Rappel technique** : Utilisation systématique de scripts PowerShell (.ps1) et mode APPEND pour le journal.
- **Articles en file d'attente** :
    - `/posts/equiper-poulailler-hiver/`
    - `/posts/pommes-de-terre-danger/`
    - `/posts/proteger-poulailler-predateurs/`
    - `/posts/danger-hiver-poules/`
"@

if (Test-Path $JournalPath) {
    Add-Content -Path $JournalPath -Value $LogEntry -Encoding UTF8
    Write-Host "✅ Directives ajoutées au journal de bord." -ForegroundColor Green
} else {
    Write-Host "❌ Erreur : Fichier journal introuvable." -ForegroundColor Red
}