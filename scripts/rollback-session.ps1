# =========================================================================================
# SCRIPT : rollback-session.ps1 (MODE APPEND - SÉCURITÉ)
# RÔLE : Supprime les modifications de la session actuelle pour retour état stable
# =========================================================================================

$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)

# 1. Suppression des surcharges de mise en page (Partials)
$headPath = "layouts/partials/head.html"
if (Test-Path $headPath) {
    Remove-Item $headPath -Force
    Write-Host "🗑️ Surcharge head.html supprimée." -ForegroundColor Yellow
}

# 2. Suppression de la configuration Tailwind spécifique
$tailwindConfig = "tailwind.config.js"
if (Test-Path $tailwindConfig) {
    Remove-Item $tailwindConfig -Force
    Write-Host "🗑️ Configuration Tailwind supprimée." -ForegroundColor Yellow
}

# 3. Nettoyage du cache Hugo
if (Test-Path "public") { Remove-Item -Recurse -Force "public" }
if (Test-Path "resources") { Remove-Item -Recurse -Force "resources" }

# 4. Mise à jour du journal de bord
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 12:25
### ⚠️ ROLLBACK SESSION
- **Action** : Annulation complète des modifications typographiques (Quicksand/Nunito).
- **Nettoyage** : Suppression de layouts/partials/head.html et tailwind.config.js.
- **Statut** : Retour à la configuration de base "Blowfish" du début de session.
"@
Add-Content -Path "Rapport-de-Projet-Mon-Petit-Poulailler.md" -Value $logEntry -Encoding UTF8

Write-Host "✅ Le projet a été réinitialisé à son état initial de session." -ForegroundColor Green
Write-Host "🚀 Lancement du serveur de secours..." -ForegroundColor Cyan

hugo server --disableFastRender