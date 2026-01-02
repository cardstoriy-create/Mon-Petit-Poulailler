# =========================================================================================
# SCRIPT : force-fonts-2026.ps1 (MODE APPEND - UI/UX)
# RÔLE : Force les variables de police Blowfish pour le style Quicksand/Nunito
# =========================================================================================
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
$projectRoot = "C:\Users\madji\Documents\Mon-Petit-Poulailler"
$cssPath = Join-Path $projectRoot "assets/css/custom.css"
$logPath = Join-Path $projectRoot "Rapport-de-Projet-Mon-Petit-Poulailler.md"

$forceCSS = @"
/* Forçage des polices Blowfish - Style Livre d'Enfant */
:root {
    --color-primary-500: #8da399;
    --color-secondary-500: #d4a373;
    --color-background: #fdfaf5;
    
    /* On écrase les variables de police natives du thème */
    --font-family-body: 'Nunito', sans-serif;
    --font-family-heading: 'Quicksand', sans-serif;
}

/* Application globale pour garantir le rendu sur tous les éléments */
body {
    font-family: var(--font-family-body) !important;
    background-color: var(--color-background);
}

h1, h2, h3, h4, .font-bold {
    font-family: var(--font-family-heading) !important;
    color: #5d4037 !important;
}
"@

[System.IO.File]::WriteAllText($cssPath, $forceCSS, $Utf8NoBom)

# Mise à jour du Journal de bord
$logEntry = @"

## 📅 Journal de bord - $(Get-Date -Format "dd/MM/yyyy HH:mm")
### 🖋️ Finalisation Typographique
- **Technique** : Forçage des variables CSS Blowfish (--font-family-body/heading).
- **Standard** : Usage du modificateur !important pour garantir la priorité du style Livre d'enfant.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8

Write-Host "Le CSS a été renforcé pour forcer les polices Quicksand et Nunito !" -ForegroundColor Green