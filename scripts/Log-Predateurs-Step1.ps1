# =========================================================================================
# SCRIPT : Log-Predateurs-Step1.ps1 (MODE APPEND)
# RÔLE : Enregistre le début du traitement de l'article Prédateurs
# =========================================================================================

$JournalPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Date = Get-Date -Format "dd/MM/yyyy HH:mm"

$LogEntry = @"

---
## 📅 Journal de bord - $Date
### 🏗️ Étape 1 & 2 : Audit "/posts/proteger-poulailler-predateurs/"
- **Contenu** : Optimisation Standard Pro (détails techniques menuiserie).
- **Affiliation** : Validation des 3 produits de sécurité (Grillage, Verrou, Projecteur).
- **Statut** : Prêt pour l'étape 3 (Illustrations manquantes).
"@

Add-Content -Path $JournalPath -Value $LogEntry -Encoding UTF8
Write-Host "✅ Journal de bord mis à jour." -ForegroundColor Cyan