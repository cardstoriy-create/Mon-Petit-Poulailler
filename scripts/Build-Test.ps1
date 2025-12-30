# =========================================================================================
# SCRIPT : Build-Test.ps1
# RÔLE : Nettoyage profond et lancement du serveur Hugo
# =========================================================================================

Write-Host "🧹 Nettoyage des résidus de compilation..." -ForegroundColor Gray
# On supprime les dossiers qui cachent parfois des erreurs d'affichage
if (Test-Path "public") { Remove-Item -Recurse -Force "public" }
if (Test-Path "resources") { Remove-Item -Recurse -Force "resources" }

Write-Host "🚀 Lancement de Hugo (Mode Reconstruction Totale)..." -ForegroundColor Cyan
Write-Host "📍 Ton site sera disponible sur : http://localhost:1313/" -ForegroundColor Yellow

# On lance le serveur en forçant le rendu complet et le nettoyage des médias inutilisés
hugo server --disableFastRender --gc