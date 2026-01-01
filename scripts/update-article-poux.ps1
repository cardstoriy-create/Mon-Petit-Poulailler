# =========================================================================================
# SCRIPT : update-article-poux.ps1
# RÔLE : Insère la section "Prévention" dans l'article Poux Rouges
# =========================================================================================

$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
$ArticlePath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\content\posts\poux-rouges-guide\index.md"

# Lecture du contenu original
$Content = Get-Content -Path $ArticlePath -Raw

# Définition de la nouvelle section pédagogique
$NewSection = @"

## 3. La Prévention : Le Secret d'Anna
Mieux vaut prévenir que guérir ! Le meilleur moyen d'empêcher le retour des parasites est de laisser vos poules prendre soin d'elles-mêmes. 

![Anna observe le bain de poussière à la terre de diatomée](prevention.webp)

**Anna** adore remplir un vieux pneu ou un bac avec un mélange de sable fin et de **Terre de Diatomée**. Les poules s'y roulent avec délice : c'est leur "spa" naturel qui déchiquette les carapaces des insectes avant qu'ils ne deviennent un problème.
"@

# Insertion de la section juste avant le tableau comparatif
$UpdatedContent = $Content -replace "## Votre Kit de Survie", ($NewSection + "`n`n## Votre Kit de Survie")

# Écriture forcée en UTF-8 sans BOM
[System.IO.File]::WriteAllText($ArticlePath, $UpdatedContent, $Utf8NoBom)

Write-Host "L'article 'Poux Rouges' a été mis à jour avec la section d'Anna !" -ForegroundColor Green