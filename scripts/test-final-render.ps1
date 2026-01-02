# =========================================================================================
# SCRIPT : test-final-render.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Lance le serveur Hugo avec nettoyage de cache et met à jour le journal
# =========================================================================================

$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"

# 1. Mise à jour du journal de bord (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 14:15
### 🔍 Validation Finale Design - Étape 2f
- **Action** : Lancement du serveur Hugo avec `--gc` (Garbage Collection).
- **Objectif** : Confirmer le rendu de Quicksand (titres) et Nunito (corps) via Tailwind.
- **État** : Serveur en cours d'exécution.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Journal de bord mis à jour. Préparation du lancement..." -ForegroundColor Green

# 2. Lancement du serveur Hugo
hugo server --disableFastRender --gc