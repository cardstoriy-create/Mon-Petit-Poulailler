# =========================================================================================
# SCRIPT : force-quicksand-final.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Importation et application forcée des polices Quicksand et Nunito
# =========================================================================================

$customCssPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\assets\css\custom.css"
$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)

# 1. Création du dossier assets/css
$cssDir = Split-Path $customCssPath
if (!(Test-Path $cssDir)) { New-Item -ItemType Directory -Path $cssDir -Force }

# 2. Contenu du CSS de forçage (Import + Application)
$cssContent = @'
/* 1. Importation depuis Google Fonts */
@import url('https://fonts.googleapis.com/css2?family=Quicksand:wght@300..700&family=Nunito:wght@200..1000&display=swap');

/* 2. Application prioritaire sur les titres */
h1, h2, h3, h4, h5, h6, .font-heading {
    font-family: 'Quicksand', sans-serif !important;
    font-weight: 700;
}

/* 3. Application sur le corps du texte */
body, p, .font-body {
    font-family: 'Nunito', sans-serif !important;
}
'@

[IO.File]::WriteAllLines($customCssPath, $cssContent, $Utf8NoBom)

# 3. Mise à jour du journal (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 14:55
### 🎨 Forçage Typographique Manuel - Étape 2al
- **Incident** : Quota atteint pour Gemini Code Assist / Rendu Quicksand absent.
- **Action** : Création de assets/css/custom.css avec @import et directives !important.
- **Objectif** : Garantir l'affichage du style "Livre d'Enfant" sans dépendre du moteur du thème.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Le forçage typographique est en place. Relance du build..." -ForegroundColor Green

# 4. Relance finale
hugo server --disableFastRender --gc