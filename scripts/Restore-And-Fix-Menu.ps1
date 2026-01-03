# =========================================================================================
# SCRIPT : Restore-And-Fix-Menu.ps1 (MODE RESTAURATION - NAVIGATION)
# RÔLE : Restaure le menu complet (Accueil, Guides, À Propos)
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

# Utilisation du standard UTF-8 sans BOM
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllLines($menuPath, $menuContent, $Utf8NoBom)

Write-Host "✅ Menu restauré et complété avec succès." -ForegroundColor Green