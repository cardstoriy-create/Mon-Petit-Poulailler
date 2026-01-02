# =========================================================================================
# SCRIPT : final-font-fix.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Écrase les variables CSS Blowfish pour garantir l'affichage de Quicksand
# =========================================================================================

$cssPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\assets\css\custom.css"
$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)

# 1. Ajout du forçage des variables spécifiques à Blowfish
$extraStyle = @"

/* Forçage des variables internes Blowfish */
:root {
    --font-family-heading: 'Quicksand', sans-serif !important;
    --font-family-body: 'Nunito', sans-serif !important;
}

h1, h2, h3, h4, .font-heading {
    font-family: 'Quicksand', sans-serif !important;
}
"@

Add-Content -Path $cssPath -Value $extraStyle -Encoding UTF8

# 2. Ajout de l'entrée au journal (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 15:20
### 🖋️ Harmonisation Blowfish - Étape 2k
- **Action** : Ajout du forçage des variables --font-family dans custom.css.
- **Objectif** : Aligner les variables du thème sur Quicksand et Nunito.
- **État** : Finalisation du style typographique.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Variables Blowfish forcées dans custom.css et Journal mis à jour." -ForegroundColor Green