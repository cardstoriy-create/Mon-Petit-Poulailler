# =========================================================================================
# SCRIPT : init-scripts.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Initialise le journal de bord pour marquer le début de la nouvelle méthodologie
# =========================================================================================

$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)

# Ajout de l'entrée au journal (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 12:55
### 🛠️ Redémarrage Méthodologique Strict
- **Action** : Initialisation du dossier /scripts conforme à la consigne utilisateur.
- **Règle** : Une seule étape à la fois, exécution depuis le dossier dédié.
- **État** : Prêt pour la suite.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Journal de bord mis à jour avec la nouvelle méthodologie." -ForegroundColor Green
