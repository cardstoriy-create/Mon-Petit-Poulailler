# =========================================================================================
# SCRIPT : Update-Journal-Construction.ps1 (MODE APPEND)
# RÔLE : Enregistre le basculement sur l'article Construction
# =========================================================================================

$JournalPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Date = Get-Date -Format "dd/MM/yyyy HH:mm"

$LogEntry = @"

---
## 📅 Journal de bord - $Date
### 🏗️ Nouvel Objectif : Guide Construction Poulailler
- **Décision** : Report de l'audit Poux Rouges. Priorité au guide "Construire vs Acheter".
- **Statut index.md** : Fichier créé et structuré avec succès.
- **Prochaine étape** : Création des prompts pour les 3 visuels (feature, diy-vs-kit, securite-automatique).
"@

if (Test-Path $JournalPath) {
    Add-Content -Path $JournalPath -Value $LogEntry -Encoding UTF8
    Write-Host "✅ Journal mis à jour : Focus sur la construction." -ForegroundColor Green
}