# =========================================================================================
# SCRIPT : final-font-fix-2026.ps1 (MODE APPEND - UI/UX)
# RÔLE : Importation directe Google Fonts + Forçage CSS variable
# =========================================================================================
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
$projectRoot = "C:\Users\madji\Documents\Mon-Petit-Poulailler"
$cssPath = Join-Path $projectRoot "assets/css/custom.css"
$logPath = Join-Path $projectRoot "Rapport-de-Projet-Mon-Petit-Poulailler.md"

$finalCSS = @"
/* IMPORTATION DIRECTE DE GOOGLE FONTS */
@import url('https://fonts.googleapis.com/css2?family=Nunito:wght@400;600&family=Quicksand:wght@500;700&display=swap');

:root {
    --color-primary-500: #8da399;
    --color-secondary-500: #d4a373;
    --color-background: #fdfaf5;
    
    /* Redéfinition des variables de thème */
    --font-family-body: 'Nunito', sans-serif;
    --font-family-heading: 'Quicksand', sans-serif;
}

body {
    font-family: 'Nunito', sans-serif !important;
    background-color: var(--color-background);
}

h1, h2, h3, h4, .font-bold {
    font-family: 'Quicksand', sans-serif !important;
    color: #5d4037 !important;
}
"@

[System.IO.File]::WriteAllText($cssPath, $finalCSS, $Utf8NoBom)

# Mise à jour du Journal de bord
$logEntry = @"

## 📅 Journal de bord - $(Get-Date -Format "dd/MM/yyyy HH:mm")
### 🖋️ Correction Finale Typographie
- **Technique** : Ajout de l'instruction @import dans custom.css pour forcer le chargement distant.
- **Vérification** : Forçage des familles Nunito et Quicksand avec !important.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "Le CSS a été mis à jour avec l'importation Google Fonts !" -ForegroundColor Green