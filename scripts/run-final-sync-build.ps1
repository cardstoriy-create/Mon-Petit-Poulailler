# =========================================================================================
# SCRIPT : run-final-sync-build.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Nettoie les ressources et relance Hugo avec la nouvelle priorité params.toml
# =========================================================================================

$projectRoot = "C:\Users\madji\Documents\Mon-Petit-Poulailler"
$logPath = "$projectRoot\Rapport-de-Projet-Mon-Petit-Poulailler.md"

# 1. Suppression physique des dossiers de cache pour forcer la lecture de params.toml
$foldersToRemove = @("public", "resources")
foreach ($folder in $foldersToRemove) {
    $path = Join-Path $projectRoot $folder
    if (Test-Path $path) { Remove-Item -Recurse -Force $path }
}

# 2. Ajout de l'entrée au journal (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 16:10
### 🔍 Build de Synchronisation - Étape 2n
- **Action** : Reconstruction totale après modification de config/_default/params.toml.
- **Objectif** : Valider si Quicksand est enfin chargé via la configuration thématique prioritaire.
- **État** : Build en cours.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Cache nettoyé. Lancement du serveur avec la nouvelle configuration..." -ForegroundColor Green

# 3. Lancement du serveur Hugo
hugo server --disableFastRender --gc