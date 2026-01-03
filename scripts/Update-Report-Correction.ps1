# =========================================================================================
# SCRIPT : Update-Report-Correction.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Note la restauration du menu après erreur d'écrasement
# =========================================================================================

$reportPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$logEntry = @"

## 📅 Journal de bord - 03/01/2026 15:55
### ⚠️ Correction Incident Menu
- **Incident** : Écrasement accidentel du fichier menus.fr.toml lors de l'ajout de la page À Propos.
- **Résolution** : Restauration via script PowerShell intégrant les trois piliers : Accueil, Guides, À Propos.
- **Standard** : Retour au protocole de vérification de contenu avant modification.
"@

Add-Content -Path $reportPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Le Rapport de Projet a été mis à jour avec la mention de la correction." -ForegroundColor Yellow