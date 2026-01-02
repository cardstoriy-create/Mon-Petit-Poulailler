# =========================================================================================
# SCRIPT : run-ia-final-build.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Nettoyage et build final suite à la correction Gemini Code Assist
# =========================================================================================

$projectRoot = "C:\Users\madji\Documents\Mon-Petit-Poulailler"
$logPath = "$projectRoot\Rapport-de-Projet-Mon-Petit-Poulailler.md"

# 1. Nettoyage physique complet
$foldersToRemove = @("public", "resources")
foreach ($folder in $foldersToRemove) {
    $path = Join-Path $projectRoot $folder
    if (Test-Path $path) { Remove-Item -Recurse -Force $path }
}

# 2. Ajout de l'entrée au journal (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 13:00
### 🚀 Build de Validation IA - Étape Finale
- **Action** : Nettoyage /public et /resources + hugo server --gc.
- **Objectif** : Valider l'intégration de Quicksand via tailwind.config.js.
- **État** : Lancement du rendu final.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Cache nettoyé. Lancement du serveur (Version IA)..." -ForegroundColor Green

# 3. Lancement du serveur Hugo avec forçage du rendu
hugo server --disableFastRender --gc