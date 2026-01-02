# =========================================================================================
# SCRIPT : run-hugo-check.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Lance le serveur Hugo pour vérification visuelle et met à jour le journal
# =========================================================================================

$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"

# 1. Mise à jour du journal de bord (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 13:35
### 🔍 Vérification Visuelle - Étape 2c
- **Action** : Lancement du serveur Hugo (hugo server).
- **Objectif** : Valider l'importation des polices et l'application du CSS (arrondis/couleurs).
- **État** : Test en cours sur localhost:1313.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Journal de bord mis à jour. Lancement du serveur..." -ForegroundColor Green

# 2. Exécution du serveur Hugo (le script s'arrêtera ici tant que le serveur tourne)
hugo server --disableFastRender --gc