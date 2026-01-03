# =========================================================================================
# SCRIPT : Update-MainMenu.ps1 (MODE OVERWRITE - NAVIGATION)
# RÔLE : Configure le menu principal dans le fichier menus.fr.toml
# =========================================================================================

$menuPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\config\_default\menus.fr.toml"

$menuContent = @"
[[main]]
  name = "Accueil"
  url = "/"
  weight = 10

[[main]]
  name = "Guides"
  url = "/posts/"
  weight = 20

[[main]]
  name = "À Propos"
  url = "/about/"
  weight = 30
"@

# Utilisation du standard UTF-8 sans BOM pour Hugo
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllLines($menuPath, $menuContent, $Utf8NoBom)

Write-Host "✅ Le menu de navigation a été mis à jour avec l'onglet 'À Propos'." -ForegroundColor Green