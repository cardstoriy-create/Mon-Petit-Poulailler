# =========================================================================================
# SCRIPT : final-font-inject.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Utilise extend-head.html pour charger Quicksand via HTML (plus fiable que CSS)
# =========================================================================================

$extendHeadPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\layouts\partials\extend-head.html"
$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)

# 1. Création du dossier partials s'il n'existe pas
$partialsDir = Split-Path $extendHeadPath
if (!(Test-Path $partialsDir)) { New-Item -ItemType Directory -Path $partialsDir -Force }

# 2. Injection HTML Directe (Liens Google + Style Forcé)
$htmlContent = @'
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300..700&family=Nunito:wght@200..1000&display=swap" rel="stylesheet">

<style>
  :root {
    --font-heading: 'Quicksand', sans-serif;
    --font-body: 'Nunito', sans-serif;
  }
  
  /* Cible tous les niveaux de titres et la classe spécifique du thème */
  h1, h2, h3, h4, h5, h6, .article-title, .font-heading {
    font-family: 'Quicksand', sans-serif !important;
    font-weight: 700; /* Gras pour bien voir l'effet rond */
  }

  body, p, .prose {
    font-family: 'Nunito', sans-serif !important;
  }
</style>
'@

[IO.File]::WriteAllLines($extendHeadPath, $htmlContent, $Utf8NoBom)

# 3. Mise à jour du journal (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 15:00
### 💉 Injection "Extend Head" - Étape 2am
- **Problème** : L'import CSS via custom.css ne charge pas la ressource font.
- **Solution** : Utilisation du partial 'extend-head.html' pour insérer les balises <link> standard.
- **Avantage** : Contourne le pipeline de compilation CSS de Hugo (méthode HTML pure).
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Extension de l'en-tête créée. Relance du serveur..." -ForegroundColor Cyan

# 4. Relance du serveur
hugo server --disableFastRender --gc