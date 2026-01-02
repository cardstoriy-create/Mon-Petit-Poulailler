# =========================================================================================
# SCRIPT : restore-home-structure.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Restaure la structure de la page d'accueil du thème Blowfish
# =========================================================================================

$themeIndexPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\themes\blowfish\layouts\index.html"
$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)

# 1. Contenu standard du index.html pour Blowfish (basé sur l'audit de Gemini)
$standardContent = @'
{{ define "main" }}
  {{ $partial := print "home/" .Site.Params.homepage.layout ".html" }}
  {{ if templates.Exists ( printf "partials/%s" $partial ) }}
    {{ partial $partial . }}
  {{ else }}
    {{ partial "home/profile.html" . }}
  {{ end }}
{{ end }}
'@

# 2. Réécriture du fichier propre
[IO.File]::WriteAllLines($themeIndexPath, $standardContent, $Utf8NoBom)

# 3. Mise à jour du journal (APPEND)
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 14:00
### 🏗️ Restauration de l'Accueil - Étape 2ah
- **Incident** : Page d'accueil vide après suppression du fichier pollué par l'IA.
- **Action** : Restauration du code standard Blowfish dans themes/blowfish/layouts/index.html.
- **Objectif** : Retrouver le contenu du site sans le message de débug.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Structure de l'accueil restaurée. Votre site doit revenir à la normale." -ForegroundColor Green

# 4. Relance avec nettoyage
hugo server --disableFastRender --gc