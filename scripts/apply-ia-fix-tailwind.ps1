# =========================================================================================
# SCRIPT : apply-ia-fix-tailwind.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Applique la correction de Gemini Code Assist dans tailwind.config.js
# =========================================================================================

$tailwindPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\tailwind.config.js"
$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)

# 1. Réécriture du tailwind.config.js selon les recommandations IA
$tailwindContent = @'
module.exports = {
  content: [
    "./layouts/**/*.html",
    "./content/**/*.md",
    "./themes/blowfish/layouts/**/*.html"
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Nunito", "sans-serif"],
        heading: ["Quicksand", "sans-serif"],
      },
    },
  },
  plugins: [
    require('@tailwindcss/typography'),
  ],
};
'@

[IO.File]::WriteAllLines($tailwindPath, $tailwindContent, $Utf8NoBom)

# 2. Ajout de l'entrée au journal de bord (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 12:55
### 🖋️ Correction IA Appliquée - Étape 2q
- **Analyse** : Application de la solution Gemini Code Assist.
- **Action** : Synchronisation de tailwind.config.js avec les chemins du thème.
- **Objectif** : Forcer Quicksand au moment de la génération du CSS par Tailwind.
- **État** : Prêt pour la recompilation finale.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Configuration Tailwind mise à jour selon l'audit IA." -ForegroundColor Green