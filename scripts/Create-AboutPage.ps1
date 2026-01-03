# =========================================================================================
# SCRIPT : Create-AboutPage.ps1 (MODE CREATE - PAGE À PROPOS)
# RÔLE : Crée la page 'À Propos' dans le dossier content
# =========================================================================================

$dirPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\content"
$filePath = "$dirPath\about.fr.md"

if (-not (Test-Path $dirPath)) {
    New-Item -ItemType Directory -Path $dirPath -Force
}

$content = @"
---
title: "L'histoire de Mon Petit Poulailler"
description: "Découvrez l'aventure familiale de Martin, Julie et Anna. Apprenez comment nous avons transformé notre jardin en paradis pour poules."
layout: "simple"
showTaxonomies: false
---

# L'histoire de notre petite tribu 🏡

Tout a commencé par une simple question d'**Anna**, ma petite fille aux couettes, lors d'un goûter dans le jardin : *"Papa, d'où viennent les œufs que l'on mange le matin ?"*.

### Le déclic de Martin
En tant que menuisier, j'aime les choses concrètes. Voir l'étincelle dans les yeux d'Anna m'a poussé à lui montrer la magie de la nature. J'ai pris mes outils, quelques planches de bois, et j'ai construit notre premier petit nid douillet pour trois poules rousses.

### Une équipe bien organisée
Le projet est vite devenu une passion pour toute la famille :
* **Julie** : C'est la spécialiste des soins naturels. Elle veille à ce que nos poules aient une santé de fer.
* **Anna** : C'est la "gardienne des œufs". Elle connaît chaque poule par son nom !
* **Barnabé & Pistache** : Notre Border Collie et notre chat, qui s'assurent (à leur manière) que personne ne vient déranger le poulailler.

### Notre mission
Nous ne sommes pas de grands industriels, juste une famille qui aime la nature. À travers ce blog, nous voulons vous aider à franchir le pas, en partageant nos réussites mais aussi nos erreurs, pour que vous puissiez vous aussi savourer le plaisir d'un jardin vivant.
"@

$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllLines($filePath, $content, $Utf8NoBom)

Write-Host "✅ La page 'À Propos' a été créée avec succès." -ForegroundColor Green