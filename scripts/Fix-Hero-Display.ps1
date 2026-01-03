# =========================================================================================
# SCRIPT : Fix-Hero-Display.ps1 (MODE RÉPARATION & CACHE)
# RÔLE : Force l'affichage du Hero et nettoie les résidus de build
# =========================================================================================

$filePath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\content\about\index.fr.md"
$publicDir = "C:\Users\madji\Documents\Mon-Petit-Poulailler\public"
$resourceDir = "C:\Users\madji\Documents\Mon-Petit-Poulailler\resources"

# 1. Nettoyage des dossiers de cache
if (Test-Path $publicDir) { Remove-Item -Path $publicDir -Recurse -Force }
if (Test-Path $resourceDir) { Remove-Item -Path $resourceDir -Recurse -Force }

Write-Host "✅ Cache Hugo nettoyé." -ForegroundColor Cyan

# 2. Vérification et mise à jour du Front Matter
$content = Get-Content $filePath -Raw
if ($content -notmatch "showHero: true") {
    $content = $content -replace "showTaxonomies: false", "showTaxonomies: false`nshowHero: true"
    $Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($filePath, $content, $Utf8NoBom)
    Write-Host "✅ showHero: true a été forcé dans le fichier." -ForegroundColor Green
} else {
    Write-Host "ℹ️ showHero est déjà présent dans le fichier." -ForegroundColor Yellow
}

Write-Host "🚀 Relancez votre serveur : hugo server --disableFastRender" -ForegroundColor White