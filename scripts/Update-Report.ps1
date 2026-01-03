# =========================================================================================
# SCRIPT : Update-Report.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Ajoute l'entrée du 03/01/2026 au rapport de projet
# =========================================================================================

$reportPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$logEntry = @"

## 📅 Journal de bord - 03/01/2026 14:40
### ✅ Optimisation Storytelling Accueil
- **Action** : Mise à jour de content/_index.fr.md.
- **Contenu** : Intégration de Julie, Anna, Barnabé et Pistache dans le récit.
- **SEO** : Ajout de liens internes vers les piliers (Porte automatique, Aliments, Poux rouges) et optimisation de la meta-description.
- **Technique** : Encodage UTF-8 sans BOM validé.
"@

Add-Content -Path $reportPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Le Rapport de Projet a été mis à jour." -ForegroundColor Cyan