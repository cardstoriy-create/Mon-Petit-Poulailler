# =========================================================================================
# SCRIPT : final-reboot-standard.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Acte la suppression réelle et relance Hugo sans cache
# =========================================================================================

$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"

# 1. Mise à jour du journal (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 13:50
### 👻 Chasse au Fantôme - Étape 2af
- **Vérification** : Test-Path a confirmé la suppression physique de layouts/index.html.
- **Action** : Relance du serveur avec --noHTTPCache et --gc (Garbage Collector).
- **Objectif** : Éliminer la persistance du message "DEBUG TEST" dans le navigateur.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8

# 2. Relance de Hugo avec forçage du rendu
Write-Host "🚀 Relance du serveur... Veuillez utiliser Ctrl+F5 sur le navigateur." -ForegroundColor Cyan
hugo server --disableFastRender --noHTTPCache --gc