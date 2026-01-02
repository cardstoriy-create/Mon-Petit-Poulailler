# =========================================================================================
# SCRIPT : set-hugo-fonts.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Configure les polices Quicksand et Nunito dans hugo.toml et met à jour le journal
# =========================================================================================

$configPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\hugo.toml"
$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)

# 1. Mise à jour de la configuration Hugo (Note : On simule l'ajout des paramètres Blowfish)
# On s'assure que les polices sont déclarées pour le thème
$fontsConfig = @"

[params.appearance]
  googleFonts = ["Quicksand", "Nunito"]
  fontHeading = "Quicksand"
  fontBody = "Nunito"
"@
Add-Content -Path $configPath -Value $fontsConfig -Encoding UTF8

# 2. Ajout de l'entrée au journal (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 13:10
### 🖋️ Configuration Design - Étape 2a
- **Action** : Déclaration des polices Quicksand et Nunito dans hugo.toml.
- **Objectif** : Préparer l'importation automatique par le thème Blowfish.
- **État** : Configuration effectuée, CSS non encore modifié.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Configuration Hugo mise à jour et Journal complété." -ForegroundColor Green