# =========================================================================================
# SCRIPT : fix-fonts-loading.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Force l'importation de Quicksand/Nunito et met à jour le journal de bord
# =========================================================================================

$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)

# 1. Création du dossier partials s'il n'existe pas
$layoutsDir = "layouts/partials"
if (!(Test-Path $layoutsDir)) { New-Item -ItemType Directory -Path $layoutsDir }

# 2. Injection des polices dans head.html (surcharge Blowfish)
$headContent = @"
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&family=Quicksand:wght@300..700&display=swap" rel="stylesheet">
<style>
  :root {
    --font-family-heading: 'Quicksand', sans-serif !important;
    --font-family-body: 'Nunito', sans-serif !important;
  }
</style>
"@
[IO.File]::WriteAllLines("$layoutsDir/head.html", $headContent, $Utf8NoBom)

# 3. Mise à jour du journal de bord
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 12:15
### 🖋️ Correction Critique Typographie
- **Problème** : Rendu Quicksand non confirmé sur le serveur.
- **Action** : Création de `layouts/partials/head.html` pour injection prioritaire des Google Fonts.
- **Technique** : Forçage des variables CSS via :root dans le head pour bypasser les délais de chargement Tailwind.
- **Statut** : En attente de build test.
"@
Add-Content -Path "Rapport-de-Projet-Mon-Petit-Poulailler.md" -Value $logEntry -Encoding UTF8

Write-Host "✅ Scripts d'injection de polices créés et Journal de bord mis à jour !" -ForegroundColor Green