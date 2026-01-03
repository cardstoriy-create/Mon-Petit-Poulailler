# =========================================================================================
# SCRIPT : Fix-Navigation-URLs.ps1 (MODE OVERWRITE - RÉPARATION)
# RÔLE : Aligne les URLs du menu sur les dossiers physiques réels
# =========================================================================================

$menuPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\config\_default\menus.fr.toml"

$fixedMenu = @"
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
  url = "/categories/materiel/"
  weight = 30

[[main]]
  name = "Santé & Hygiène"
  url = "/categories/sante/"
  weight = 40

[[main]]
  name = "Réglementation"
  url = "/categories/guides/"
  weight = 50

[[main]]
  name = "À Propos"
  url = "/about/"
  weight = 60
"@

$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllLines($menuPath, $fixedMenu, $Utf8NoBom)

Write-Host "✅ Navigation corrigée : les URLs correspondent désormais aux dossiers physiques." -ForegroundColor Green