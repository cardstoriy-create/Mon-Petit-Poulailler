# =========================================================================================
# SCRIPT : clear-hugo-cache.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Supprime les dossiers de cache et les ressources compilées pour un nouveau départ
# =========================================================================================

$projectRoot = "C:\Users\madji\Documents\Mon-Petit-Poulailler"
$logPath = "$projectRoot\Rapport-de-Projet-Mon-Petit-Poulailler.md"

# 1. Suppression des dossiers de cache
$foldersToRemove = @("public", "resources", ".hugo_build.lock")

foreach ($folder in $foldersToRemove) {
    $path = Join-Path $projectRoot $folder
    if (Test-Path $path) {
        Remove-Item -Recurse -Force $path
        Write-Host "🗑️ Supprimé : $folder" -ForegroundColor Yellow
    }
}

# 2. Ajout de l'entrée au journal (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 14:55
### 🧹 Nettoyage Profond - Étape 2i
- **Action** : Suppression manuelle des dossiers /public et /resources.
- **Objectif** : Éliminer tout résidu de cache CSS/Serif avant la prochaine compilation.
- **État** : Cache vidé, prêt pour un nouveau lancement.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Cache nettoyé et Journal de bord mis à jour." -ForegroundColor Green