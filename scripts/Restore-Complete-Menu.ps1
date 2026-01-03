# =========================================================================================
# SCRIPT : Restore-Complete-Menu.ps1 (MODE OVERWRITE - RÉPARATION)
# RÔLE : Restaure la navigation complète thématique + À Propos
# =========================================================================================

$menuPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\config\_default\menus.fr.toml"

$fullMenu = @"
[[main]]
  name = "Accueil"
  url = "/"
  weight = 10

[[main]]
  name = "Nutrition"
  url = "/categories/nutrition/"
  weight = 20

[[main]]
  name = "Matériel"
  url = "/categories/matériel/"
  weight = 30

[[main]]
  name = "Santé & Hygiène"
  url = "/categories/santé/"
  weight = 40

[[main]]
  name = "Réglementation"
  url = "/categories/législatif/"
  weight = 50

[[main]]
  name = "À Propos"
  url = "/about/"
  weight = 60
"@

$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllLines($menuPath, $fullMenu, $Utf8NoBom)

Write-Host "✅ Navigation complète restaurée (Nutrition, Matériel, Santé, Législatif, À Propos)." -ForegroundColor Green