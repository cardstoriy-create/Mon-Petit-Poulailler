# =========================================================================================
# SCRIPT : final-ia-validation.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Documente la directive @config et lance la compilation finale
# =========================================================================================

$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"

# 1. Mise à jour du journal de bord (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 13:05
### 🖋️ Validation Directives IA - Étape 2u
- **Action** : Utilisation de la directive @config "tailwind.config.js" dans assets/css/main.css.
- **Détails** : Forçage explicite du compilateur vers la configuration racine.
- **État** : Prêt pour le rendu final "Livre d'enfant".
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Journal mis à jour. Lancement du build final..." -ForegroundColor Green

# 2. Lancement du build propre
.\scripts\run-ia-final-build.ps1