# =========================================================================================
# SCRIPT : config-tailwind-fonts.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Configure les polices dans tailwind.config.js et met à jour le journal
# =========================================================================================

$tailwindPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\tailwind.config.js"
$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)

# 1. Rédaction du contenu de configuration Tailwind
$tailwindContent = @'
module.exports = {
  content: ["./layouts/**/*.html", "./content/**/*.md", "./content/**/*.html"],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Nunito", "sans-serif"],
        heading: ["Quicksand", "sans-serif"],
      },
    },
  },
  plugins: [],
};
'@

# Écriture du fichier tailwind.config.js
[IO.File]::WriteAllLines($tailwindPath, $tailwindContent, $Utf8NoBom)

# 2. Ajout de l'entrée au journal de bord (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 14:05
### 🖋️ Configuration Design - Étape 2e
- **Action** : Configuration de tailwind.config.js.
- **Détails** : Extension du thème pour inclure Nunito (sans) et Quicksand (heading).
- **Objectif** : Permettre à Tailwind de compiler les polices "Livre d'Enfant".
- **État** : Configuration logicielle terminée.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ tailwind.config.js configuré et Journal de bord mis à jour." -ForegroundColor Green