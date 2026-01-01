# =========================================================================================
# SCRIPT : Log-Equiper-Hiver.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Ajoute l'entrée de suivi pour l'article Équiper son Poulailler en Hiver
# =========================================================================================

$JournalPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Date = Get-Date -Format "dd/MM/yyyy HH:mm"

$LogEntry = @"

---
## 📅 Journal de bord - $Date
### 🛠️ Étape 1 & 2 : Audit "/posts/equiper-poulailler-hiver/"
- **Contenu** : Optimisation au Standard Pro effectuée (renforcement du ton de Martin).
- **Affiliation** : Validation des liens Amazon pour les plaques chauffantes.
- **Statut** : Prêt pour l'étape 3 (Illustrations).
"@

Add-Content -Path $JournalPath -Value $LogEntry -Encoding UTF8
Write-Host "✅ Journal de bord mis à jour." -ForegroundColor Cyan
