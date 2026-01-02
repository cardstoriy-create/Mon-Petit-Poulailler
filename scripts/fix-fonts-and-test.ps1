# =========================================================================================
# SCRIPT : fix-fonts-and-test.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Injection prioritaire Google Fonts et lancement du serveur de test
# =========================================================================================

$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)

# 1. Création du dossier partials si nécessaire
$layoutsDir = "layouts/partials"
if (!(Test-Path $layoutsDir)) { New-Item -ItemType Directory -Path $layoutsDir }

# 2. Injection des polices dans head.html (Surcharge Blowfish)
$headContent = @"
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&family=Quicksand:wght@300..700&display=swap" rel="stylesheet">
<style>
  /* Forçage impératif pour le style Livre d'Enfant */
  :root {
    --font-family-heading: 'Quicksand', sans-serif !important;
    --font-family-body: 'Nunito', sans-serif !important;
  }
  h1, h2, h3, h4, .font-heading {
    font-family: 'Quicksand', sans-serif !important;
    font-weight: 700 !important;
  }
  body, p, .font-body {
    font-family: 'Nunito', sans-serif !important;
  }
</style>
"@
[IO.File]::WriteAllLines("$layoutsDir/head.html", $headContent, $Utf8NoBom)

# 3. Mise à jour du journal de bord
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 12:20
### 🖋️ Forçage Typographique Niveau 2
- **Action** : Injection directe via `layouts/partials/head.html` avec sélecteurs CSS explicites (h1, h2, body).
- **Objectif** : Garantir le rendu de Quicksand même si Tailwind tarde à compiler les classes.
- **État** : Serveur de test lancé.
"@
Add-Content -Path "Rapport-de-Projet-Mon-Petit-Poulailler.md" -Value $logEntry -Encoding UTF8

Write-Host "✅ Polices injectées. Lancement du serveur Hugo..." -ForegroundColor Green

# 4. Lancement du serveur de test
hugo server --disableFastRender --gc