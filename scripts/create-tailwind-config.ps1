# =========================================================================================
# SCRIPT : create-tailwind-config.ps1 (MODE PRODUCTION)
# RÔLE : Crée la surcharge Tailwind pour les polices Livre d'Enfant
# =========================================================================================
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
$projectRoot = "C:\Users\madji\Documents\Mon-Petit-Poulailler"
$configPath = Join-Path $projectRoot "tailwind.config.js"
$logPath = Join-Path $projectRoot "Rapport-de-Projet-Mon-Petit-Poulailler.md"

$tailwindContent = @"
/** @type {import('tailwindcss').Config} */
const theme = require('./themes/blowfish/tailwind.config.js');

module.exports = {
  ...theme,
  theme: {
    ...theme.theme,
    extend: {
      ...theme.theme.extend,
      fontFamily: {
        sans: ['Nunito', 'sans-serif'],
        heading: ['Quicksand', 'sans-serif'],
      },
    },
  },
};
"@

[System.IO.File]::WriteAllText($configPath, $tailwindContent, $Utf8NoBom)

# Mise à jour du Journal
$logEntry = @"

## 📅 Journal de bord - $(Get-Date -Format "dd/MM/yyyy HH:mm")
### 🏗️ Surcharge Tailwind CSS
- **Fichier** : Création de tailwind.config.js à la racine.
- **Configuration** : Héritage du thème Blowfish et injection des familles Nunito/Quicksand.
- **Méthode** : Standard Tailwind pour l'optimisation des polices.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "Le fichier tailwind.config.js a été créé proprement à la racine !" -ForegroundColor Green