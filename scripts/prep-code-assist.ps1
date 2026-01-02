# =========================================================================================
# SCRIPT : prep-code-assist.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Prépare un audit de configuration pour Gemini Code Assist et met à jour le journal
# =========================================================================================

$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)

# 1. Mise à jour du journal de bord (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 16:45
### 🤖 Transition IA - Étape 2p
- **Problème** : Rendu Quicksand toujours non confirmé après forçage manuel.
- **Décision** : Passage à Gemini Code Assist pour analyse de la @codebase.
- **Action** : Préparation des fichiers de config pour audit IA.
- **État** : Prêt pour intervention via VS Code.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Journal de bord mis à jour. Prêt pour Gemini Code Assist." -ForegroundColor Green