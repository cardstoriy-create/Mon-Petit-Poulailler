# =========================================================================================
# SCRIPT : Debug-About-Hero.ps1 (MODE AUDIT)
# RÔLE : Analyse la cohérence des paramètres Hero entre Hugo, Params et la Page
# =========================================================================================

$hugoPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\hugo.toml"
$paramsPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\config\_default\params.toml"
$indexPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\content\about\index.fr.md"

Write-Host "--- DÉBUT DE L'AUDIT DE CONFIGURATION ---" -ForegroundColor Cyan

# 1. Analyse de hugo.toml
if (Test-Path $hugoPath) {
    $hugoContent = Get-Content $hugoPath -Raw
    if ($hugoContent -match "\[params\]") {
        Write-Host "⚠️ ATTENTION : Une section [params] existe dans hugo.toml. Elle peut écraser params.toml !" -ForegroundColor Yellow
    }
}

# 2. Analyse de params.toml
if (Test-Path $paramsPath) {
    $paramsContent = Get-Content $paramsPath -Raw
    Write-Host "🔍 params.toml détecté." -ForegroundColor Gray
}

# 3. Analyse du Front Matter de la page About
if (Test-Path $indexPath) {
    $indexContent = Get-Content $indexPath -Raw
    Write-Host "🔍 Analyse du Front Matter de about/index.fr.md :" -ForegroundColor Gray
    
    $checkHero = $indexContent -match "showHero: true"
    $checkStyle = $indexContent -match "heroStyle:"
    
    Write-Host "   - showHero présent : $checkHero"
    Write-Host "   - heroStyle présent : $checkStyle"
}

Write-Host "--- FIN DE L'AUDIT ---" -ForegroundColor Cyan
Write-Host "👉 Merci d'afficher le contenu de hugo.toml pour la suite." -ForegroundColor White