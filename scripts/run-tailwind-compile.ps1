# =========================================================================================
# SCRIPT : run-tailwind-compile.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Force la recompilation Tailwind et lance le serveur de test
# =========================================================================================

$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"

# 1. Mise à jour du journal de bord (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 14:40
### 🔍 Test de Recompilation - Étape 2h
- **Action** : Lancement de hugo server avec nettoyage des ressources.
- **Objectif** : Forcer la prise en compte des directives @tailwind et des polices Quicksand/Nunito.
- **État** : Compilation en cours.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Journal de bord mis à jour. Lancement de la compilation..." -ForegroundColor Green

# 2. Lancement du serveur Hugo
hugo server --disableFastRender --gc