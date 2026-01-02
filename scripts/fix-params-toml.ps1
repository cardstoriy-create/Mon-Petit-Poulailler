# =========================================================================================
# SCRIPT : fix-params-toml.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Répare le fichier params.toml corrompu et met à jour le journal
# =========================================================================================

$paramsPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\config\_default\params.toml"
$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)

# 1. Réécriture propre du fichier params.toml (Format TOML valide)
$paramsContent = @'
# Configuration des paramètres Blowfish
[appearance]
  showTaxonomies = true
  heroStyle = "basic"
  googleFonts = ["Quicksand", "Nunito"]
  fontHeading = "quicksand"
  fontBody = "nunito"
'@

[IO.File]::WriteAllLines($paramsPath, $paramsContent, $Utf8NoBom)

# 2. Ajout de l'entrée au journal (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 16:30
### 🛠️ Réparation Critique - Étape 2o
- **Problème** : Erreur de désérialisation (unmarshal failed) sur params.toml.
- **Action** : Réécriture complète du fichier avec un format TOML valide.
- **État** : Configuration réparée, prêt pour un nouveau test de build.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Fichier params.toml réparé avec succès." -ForegroundColor Green