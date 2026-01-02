# =========================================================================================
# SCRIPT : sync-blowfish-params.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Configure les polices dans config/_default/params.toml pour priorité Blowfish
# =========================================================================================

$paramsPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\config\_default\params.toml"
$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)

# 1. Création du dossier si inexistant
$paramsDir = Split-Path $paramsPath
if (!(Test-Path $paramsDir)) { 
    New-Item -ItemType Directory -Path $paramsDir -Force 
    Write-Host "📂 Dossier de configuration créé." -ForegroundColor Cyan
}

# 2. Injection de la configuration des polices (APPEND)
$fontsParams = @"

[appearance]
  googleFonts = ["Quicksand", "Nunito"]
  fontHeading = "quicksand"
  fontBody = "nunito"
"@

Add-Content -Path $paramsPath -Value $fontsParams -Encoding UTF8

# 3. Ajout de l'entrée au journal (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 15:55
### 🖋️ Harmonisation Configuration - Étape 2m
- **Action** : Mise à jour de config/_default/params.toml.
- **Détails** : Déclaration explicite des polices pour le moteur Blowfish.
- **Objectif** : Lever le conflit de priorité entre les différents fichiers de configuration.
- **État** : Paramètres synchronisés.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ params.toml mis à jour avec la priorité thématique." -ForegroundColor Green