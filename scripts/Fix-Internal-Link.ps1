# =========================================================================================
# SCRIPT : Fix-Internal-Link.ps1
# RÔLE : Corrige la faute de frappe dans le lien interne (automatique vs automatic)
# =========================================================================================

$postPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\content\posts\proteger-poulailler-predateurs\index.md"

# On remplace l'erreur "automatic" par "automatique"
(Get-Content $postPath) -replace 'porte-automatic-guide', 'porte-automatique-guide' | Set-Content $postPath

Write-Host "✅ Lien interne corrigé : porte-automatique-guide." -ForegroundColor Green