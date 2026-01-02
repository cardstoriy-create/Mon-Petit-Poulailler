# =========================================================================================
# SCRIPT : cleanup-and-final-build.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Supprime les fichiers de test et lance la compilation finale "Livre d'Enfant"
# =========================================================================================

$projectRoot = "C:\Users\madji\Documents\Mon-Petit-Poulailler"
$logPath = "$projectRoot\Rapport-de-Projet-Mon-Petit-Poulailler.md"

# 1. Suppression des fichiers de débogage
$filesToRemove = @(
    "$projectRoot\layouts\index.html",
    "$projectRoot\layouts\partials\head.html",
    "$projectRoot\assets\css\main.css"
)

foreach ($file in $filesToRemove) {
    if (Test-Path $file) { 
        Remove-Item $file -Force 
        Write-Host "🗑️ Supprimé : $(Split-Path $file -Leaf)" -ForegroundColor Gray
    }
}

# 2. Mise à jour du journal (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 13:40
### 🧹 Nettoyage Final - Étape 2ad
- **Incident** : Crash du flux Gemini Code Assist après validation.
- **Action** : Suppression manuelle des fichiers de test (DEBUG TEST) et des surcharges inutiles.
- **État** : Lancement du build final basé sur la configuration tailwind.config.js nettoyée.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8

# 3. Lancement du Build Frais
Write-Host "🚀 Lancement de la compilation finale..." -ForegroundColor Green
.\scripts\run-ia-final-build.ps1