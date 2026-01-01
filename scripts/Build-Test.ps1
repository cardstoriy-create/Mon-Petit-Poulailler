# =========================================================================================
# SCRIPT : build-test.ps1
# RÔLE : Lance une compilation Hugo pour vérifier l'intégrité du site
# =========================================================================================

Write-Host "Lancement de la compilation de test Hugo..." -ForegroundColor Cyan

# Exécution de Hugo avec mesure du temps
Measure-Command { 
    hugo --minify 
} | ForEach-Object { 
    Write-Host "Compilation terminée en $($_.TotalSeconds) secondes." -ForegroundColor Green 
}

# Vérification simple du dossier public
if (Test-Path ".\public") {
    $PageCount = (Get-ChildItem -Path ".\public" -Filter *.html -Recurse).Count
    Write-Host "Succès : $PageCount pages HTML générées dans le dossier ./public" -ForegroundColor Green
} else {
    Write-Host "Erreur : Le dossier /public n'a pas été généré." -ForegroundColor Red
}