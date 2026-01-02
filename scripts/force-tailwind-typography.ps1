# =========================================================================================
# SCRIPT : force-tailwind-typography.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Lie les polices Quicksand et Nunito aux éléments HTML via Tailwind directives
# =========================================================================================

$cssPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\assets\css\custom.css"
$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)

# 1. Mise à jour du CSS avec les directives @apply de Tailwind
$cssContent = @"
@tailwind base;
@tailwind components;
@tailwind utilities;

/* Forçage des polices Livre d'Enfant */
h1, h2, h3, h4, h5, h6 {
    @apply font-heading;
    font-family: 'Quicksand', sans-serif !important;
}

body {
    @apply font-sans;
    font-family: 'Nunito', sans-serif !important;
}

/* On garde nos styles précédents */
:root {
    --color-background: #fdfaf5 !important;
}

.article-card, img, .alert {
    border-radius: 20px !important;
}
"@

[IO.File]::WriteAllLines($cssPath, $cssContent, $Utf8NoBom)

# 2. Ajout de l'entrée au journal (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 14:30
### 🖋️ Correction Design - Étape 2g
- **Problème** : Rendu Serif constaté au lieu de Quicksand (Sans-Serif).
- **Action** : Injection des directives @tailwind et forçage !important dans custom.css.
- **Objectif** : Écraser les polices par défaut du navigateur ou du thème.
- **État** : CSS forcé, nécessite une recompilation.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ custom.css mis à jour avec les directives de forçage." -ForegroundColor Green