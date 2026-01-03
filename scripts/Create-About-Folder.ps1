# =========================================================================================
# SCRIPT : Create-About-Folder.ps1
# RÔLE : S'assure que le fichier est au bon endroit dans /content/
# =========================================================================================

$targetPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\content\about.fr.md"

# Le dossier parent est "content"
if (Test-Path "C:\Users\madji\Documents\Mon-Petit-Poulailler\content") {
    Write-Host "✅ Le dossier destination existe. Prêt pour la création du fichier." -ForegroundColor Green
} else {
    Write-Host "⚠️ Attention, le dossier 'content' est introuvable !" -ForegroundColor Red
}