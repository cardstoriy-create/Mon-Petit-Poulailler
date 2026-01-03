# =========================================================================================
# SCRIPT : Convert-About-To-Bundle.ps1 (MODE RESTRUCTURE)
# RÔLE : Transforme about.fr.md en un dossier Page Bundle /about/index.fr.md
# =========================================================================================

$baseDir = "C:\Users\madji\Documents\Mon-Petit-Poulailler\content"
$oldFile = "$baseDir\about.fr.md"
$newDir = "$baseDir\about"
$newFile = "$newDir\index.fr.md"

# 1. Vérification de l'existence du fichier source
if (Test-Path $oldFile) {
    # 2. Création du dossier 'about'
    if (-not (Test-Path $newDir)) {
        New-Item -ItemType Directory -Path $newDir -Force
        Write-Host "✅ Dossier /content/about/ créé." -ForegroundColor Cyan
    }

    # 3. Déplacement et renommage du fichier
    Move-Item -Path $oldFile -Destination $newFile -Force
    Write-Host "✅ Fichier about.fr.md déplacé vers about/index.fr.md." -ForegroundColor Green
} else {
    Write-Host "⚠️ Le fichier about.fr.md est introuvable à la racine de /content/." -ForegroundColor Red
}