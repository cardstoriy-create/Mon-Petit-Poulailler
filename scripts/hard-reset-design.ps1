# =========================================================================================
# SCRIPT : hard-reset-design.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Suppression forcée de tous les résidus de débogage et cache
# =========================================================================================

$projectRoot = "C:\Users\madji\Documents\Mon-Petit-Poulailler"
$logPath = "$projectRoot\Rapport-de-Projet-Mon-Petit-Poulailler.md"

Write-Host "🧹 Début du nettoyage radical..." -ForegroundColor Cyan

# 1. Arrêter les processus Hugo fantômes (si ils existent)
Get-Process hugo -ErrorAction SilentlyContinue | Stop-Process -Force

# 2. Suppression physique des fichiers de test
$trash = @(
    "$projectRoot\layouts\index.html",
    "$projectRoot\layouts\partials\head.html",
    "$projectRoot\assets\css\main.css"
)

foreach ($file in $trash) {
    if (Test-Path $file) { 
        Remove-Item $file -Force -Confirm:$false
        Write-Host "🗑️ Supprimé : $file" -ForegroundColor Gray
    }
}

# 3. Vidage complet des dossiers de build et de cache
$folders = @("public", "resources", ".hugo_build.lock")
foreach ($folder in $folders) {
    $path = Join-Path $projectRoot $folder
    if (Test-Path $path) { 
        Remove-Item $path -Recurse -Force -Confirm:$false
        Write-Host "🔥 Vidé : $folder" -ForegroundColor Red
    }
}

# 4. Mise à jour du journal (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 13:45
### 🔄 Hard Reset - Étape 2ae
- **Problème** : Persistance du message "DEBUG TEST" malgré le nettoyage.
- **Action** : Arrêt forcé du binaire Hugo et suppression physique des dossiers /public et /resources.
- **Objectif** : Forcer une reconstruction totale sans aucun fichier de surcharge résiduel.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Nettoyage terminé. Le terrain est vierge." -ForegroundColor Green