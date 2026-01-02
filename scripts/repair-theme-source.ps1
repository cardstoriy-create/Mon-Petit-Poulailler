# =========================================================================================
# SCRIPT : repair-theme-source.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Supprime l'injection faite par l'IA dans le dossier thèmes
# =========================================================================================

$themeIndexPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\themes\blowfish\layouts\index.html"
$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"

# 1. Suppression du fichier pollué dans le thème
if (Test-Path $themeIndexPath) {
    Remove-Item $themeIndexPath -Force
    Write-Host "✅ Le fichier index.html pollué dans le thème a été supprimé." -ForegroundColor Green
}

# 2. Mise à jour du journal (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 13:55
### 🚑 Chirurgie de secours - Étape 2ag
- **Analyse** : Gemini Code Assist a modifié le thème directement (/themes/blowfish/layouts/index.html).
- **Action** : Suppression manuelle du fichier pollué dans le dossier thèmes pour restaurer l'intégrité du projet.
- **Résultat attendu** : Disparition immédiate du message "DEBUG TEST" après reboot.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8

# 3. Relance immédiate
hugo server --disableFastRender --gc