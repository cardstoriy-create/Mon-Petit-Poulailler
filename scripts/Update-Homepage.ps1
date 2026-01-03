# =========================================================================================
# SCRIPT : Update-Homepage.ps1 (MODE OVERWRITE - PAGE ACCUEIL)
# RÔLE : Met à jour le contenu de la page d'accueil avec le storytelling optimisé
# =========================================================================================

$path = "C:\Users\madji\Documents\Mon-Petit-Poulailler\content\_index.fr.md"

$newContent = @"
---
title: "Mon Petit Poulailler"
description: "Découvrez les conseils de Martin pour élever vos poules : guides de construction DIY, alimentation saine et soins naturels pour un poulailler familial épanoui."
text_profile: true
showTaxonomies: false
---

# Bienvenue dans notre jardin ! 🌿

Moi, c'est **Martin**. Dans la vie, je suis menuisier (j'adore travailler le bois !), mais ma deuxième passion, ce sont mes poules. 🐔

## Une aventure familiale avec Julie, Anna et nos amis
Tout a commencé il y a quelques années quand ma petite **Anna** m'a demandé : *"Papa, pourquoi on n'a pas des œufs dans le jardin ?"*. Avec l'aide de **Julie**, ma femme, et sous l'œil attentif de **Pistache** le chat et **Barnabé**, notre fidèle compagnon, l'aventure a commencé. J'ai construit mon premier poulailler, et depuis, nous apprenons chaque jour à rendre nos poules heureuses.

Ici, **pas de jargon compliqué**. Que vous ayez un grand jardin ou un petit coin de verdure, je partage avec vous notre quotidien :

* 🛠️ Mes **plans de construction** et mes tests de [matériel indispensable](/posts/porte-automatique-guide/).
* 🌾 Mes conseils pour [bien nourrir](/posts/aliments-interdits-poules/) vos protégées sans danger.
* 🩹 Mes astuces pour l'hygiène et les [petits bobos](/posts/poux-rouges-guide/).

Mon seul but ? Que vos poules soient en pleine santé pour vous offrir de bons œufs frais ! 🥚✨

---
"@

# Forçage de l'encodage UTF-8 sans BOM
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllLines($path, $newContent, $Utf8NoBom)

Write-Host "✅ La page d'accueil a été mise à jour avec succès (Standard Pro)." -ForegroundColor Green