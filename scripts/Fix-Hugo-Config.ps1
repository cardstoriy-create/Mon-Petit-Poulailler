# =========================================================================================
# SCRIPT : Fix-Hugo-Config.ps1 (MODE RÉPARATION FINALE)
# RÔLE : Nettoie hugo.toml et force l'affichage de l'image sur la page About
# =========================================================================================

$hugoPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\hugo.toml"
$aboutPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\content\about\index.fr.md"
$publicDir = "C:\Users\madji\Documents\Mon-Petit-Poulailler\public"
$resourceDir = "C:\Users\madji\Documents\Mon-Petit-Poulailler\resources"

# 1. Réécriture de hugo.toml (Standardisation)
$hugoContent = @"
baseURL = "https://www.mon-petit-poulailler.com/"
title = "Mon Petit Poulailler"
theme = "blowfish"
languageCode = "fr"
defaultContentLanguage = "fr"

[pagination]
  pagerSize = 20

[languages.fr]
  languageName = "Français"
  contentDir = "content"
  weight = 1
"@

# 2. Mise à jour du Front Matter de la page About
$aboutContent = Get-Content $aboutPath -Raw
if ($aboutContent -notmatch "heroStyle:") {
    $aboutContent = $aboutContent -replace "showHero: true", "showHero: true`nheroStyle: `"basic`""
}

# 3. Exécution des modifications
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText($hugoPath, $hugoContent, $Utf8NoBom)
[System.IO.File]::WriteAllText($aboutPath, $aboutContent, $Utf8NoBom)

# 4. Nettoyage du cache
if (Test-Path $publicDir) { Remove-Item -Path $publicDir -Recurse -Force }
if (Test-Path $resourceDir) { Remove-Item -Path $resourceDir -Recurse -Force }

Write-Host "✅ Configuration nettoyée et Hero Style activé sur la page About." -ForegroundColor Green
Write-Host "🚀 Relancez votre serveur : hugo server" -ForegroundColor White