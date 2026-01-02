# =========================================================================================
# SCRIPT : check-font-loading.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Analyse les fichiers de config pour détecter pourquoi Quicksand ne s'affiche pas
# =========================================================================================

$configPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\hugo.toml"
$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"

Write-Host "🔍 Analyse de la configuration en cours..." -ForegroundColor Cyan

# 1. Vérification du fichier config
$configContent = Get-Content $configPath
$hasQuicksand = $configContent -match "Quicksand"

if ($hasQuicksand) {
    Write-Host "✅ Quicksand est présent dans hugo.toml" -ForegroundColor Green
} else {
    Write-Host "❌ Quicksand est ABSENT de hugo.toml" -ForegroundColor Red
}

# 2. Ajout de l'entrée au journal (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 15:35
### 🔍 Diagnostic Typographie - Étape 2l
- **Problème** : Rendu Serif persistant malgré les forçages CSS.
- **Action** : Lancement d'un script de diagnostic des fichiers de configuration.
- **Hypothèse** : Conflit avec les paramètres par défaut du thème Blowfish dans config/_default/params.toml.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8