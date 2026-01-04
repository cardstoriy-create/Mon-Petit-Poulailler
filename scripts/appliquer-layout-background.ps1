# =========================================================================================
# SCRIPT : "appliquer-layout-background.ps1" (MODE SÉCURISÉ)
# RÔLE : Ajoute ou modifie 'layout: "background"' dans tous les articles du dossier posts
# =========================================================================================

$postsPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\content\posts"
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)

# Récupération de tous les fichiers index.md dans les sous-dossiers
$files = Get-ChildItem -Path $postsPath -Recurse -Filter "index.md"

foreach ($file in $files) {
    Write-Host "⚙️ Traitement de : $($file.FullName)" -ForegroundColor Cyan
    $content = Get-Content -Path $file.FullName -Raw
    
    # Vérification si le champ layout existe déjà
    if ($content -match "layout\s*:") {
        # On remplace la valeur existante par "background"
        $content = $content -replace "layout\s*:.*", "layout: `"background`""
    } else {
        # On insère layout: "background" juste après le premier "---"
        $content = $content -replace "---", "---`nlayout: `"background`""
    }
    
    # Sauvegarde avec encodage UTF-8 sans BOM
    [System.IO.File]::WriteAllText($file.FullName, $content, $utf8NoBom)
}

Write-Host "✅ Harmonisation terminée ! Toutes les pages utilisent le layout background." -ForegroundColor Green