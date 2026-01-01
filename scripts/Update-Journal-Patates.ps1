# =========================================================================================
# SCRIPT : Update-Journal-Patates.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Enregistre la validation de l'étape 1 et 2 pour l'article Patates
# =========================================================================================

$JournalPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Date = Get-Date -Format "dd/MM/yyyy HH:mm"

$LogEntry = @"

---
## 📅 Journal de bord - $Date
### 🥔 Étape 1 & 2 Validées : "/posts/pommes-de-terre-danger/"
- **Standard Pro** : Analyse terminée, structure validée (méthode de Martin, alertes solanine).
- **Affiliation** : Liens Amazon Eggersmann et Ida Plus vérifiés et cohérents.
- **Statut** : Prêt pour l'étape 3 (Prompts visuels).
"@

if (Test-Path $JournalPath) {
    Add-Content -Path $JournalPath -Value $LogEntry -Encoding UTF8
    Write-Host "✅ Journal mis à jour." -ForegroundColor Green
}