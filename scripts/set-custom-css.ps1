# =========================================================================================
# SCRIPT : set-custom-css.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Applique le style visuel (couleurs et arrondis) dans custom.css
# =========================================================================================

$cssPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\assets\css\custom.css"
$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)

# 1. Création du dossier assets/css s'il n'existe pas
$cssDir = Split-Path $cssPath
if (!(Test-Path $cssDir)) { New-Item -ItemType Directory -Path $cssDir -Force }

# 2. Rédaction du style visuel
$cssContent = @"
/* Style Mon Petit Poulailler - Univers de Martin et Anna */
:root {
    --color-background: #fdfaf5 !important; /* Papier crème doux */
}

body {
    background-color: var(--color-background);
}

/* Bordures arrondies pour l'aspect ludique */
.article-card, img, .alert {
    border-radius: 20px !important;
}

h1, h2, h3 {
    color: #5d4037 !important; /* Marron chocolat pour la douceur */
}
"@

# On écrit le fichier (ici on écrase le CSS pour repartir sur une base propre, mais le journal reste en APPEND)
[IO.File]::WriteAllLines($cssPath, $cssContent, $Utf8NoBom)

# 3. Ajout de l'entrée au journal (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 13:20
### 🎨 Configuration Design - Étape 2b
- **Action** : Création de assets/css/custom.css.
- **Détails** : Fond crème (#fdfaf5), bordures arrondies (20px) et titres marron chocolat.
- **État** : Design visuel appliqué, en attente de vérification du rendu.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Fichier custom.css créé et Journal de bord mis à jour." -ForegroundColor Green