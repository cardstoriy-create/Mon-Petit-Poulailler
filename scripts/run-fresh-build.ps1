# =========================================================================================
# SCRIPT : run-fresh-build.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Relance Hugo après un nettoyage complet pour valider le rendu final
# =========================================================================================

$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"

# 1. Mise à jour du journal de bord (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 15:05
### 🔍 Build à Froid - Étape 2j
- **Action** : Lancement de hugo server après suppression de /public et /resources.
- **Objectif** : Forcer une recompilation totale pour obtenir les polices Quicksand/Nunito.
- **État** : En attente du rendu navigateur.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Journal de bord mis à jour. Lancement du serveur..." -ForegroundColor Green

# 2. Lancement du serveur Hugo
hugo server --disableFastRender --gc