# =========================================================================================
# SCRIPT : Publish-Article-Pain.ps1
# RÔLE : Publication finale de l'article "Pain" avec la version corrigée
# =========================================================================================

$postPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\content\posts\donner-du-pain-poules"
if (!(Test-Path $postPath)) { New-Item -ItemType Directory -Force -Path $postPath }

$content = @"
---
title: "Peut-on donner du pain aux poules ? Le Guide de Sécurité de Martin"
slug: "donner-du-pain-poules"
description: "Donner du pain à vos poules : bonne ou mauvaise idée ? Découvrez la méthode de Martin pour neutraliser le sel et éviter les dangers du pain rassis."
date: 2025-12-11T22:17:00Z
draft: false
tags: ["Alimentation", "Sécurité", "Pain"]
categories: ["Conseils Élevage"]
author: "Martin"
showHero: true
---

**Oui, vous pouvez donner du pain à vos poules, mais uniquement en tant que friandise occasionnelle (maximum une fois par semaine). Pour éviter tout danger, le pain doit être sec, longuement trempé dans l'eau puis vigoureusement pressé afin d'éliminer l'excès de sel.**

---

À "Mon Petit Poulailler", **Julie** a horreur du gaspillage. Dès qu'une baguette commence à durcir sur le comptoir, le premier réflexe est de vouloir la donner à nos pondeuses. Cependant, si le pain semble être un régal pour elles, il cache des pièges que tout éleveur débutant doit connaître. 

![Julie et Anna hésitant à donner une baguette de pain rassis sous l'œil de Pistache](feature.webp)

## Les 3 Dangers du Pain en Excès

1. **L'Excès de Sel :** Le pain contient beaucoup de sodium. Le système rénal des poules gère très mal le sel.
2. **Le Blocage du Jabot :** Le pain sec gonfle. S'il stagne, il peut former une boule compacte mortelle.
3. **L'Effet "Fast-Food" :** Riche en glucides mais pauvre en protéines, le pain fait grossir les poules, ce qui stoppe la ponte.

{{< alert icon="triangle-exclamation" cardColor="#e63946" >}}
**ATTENTION MOISISSURES :** Ne donnez jamais de pain même légèrement moisi. Les mycotoxines présentes dans le pain rassis sont extrêmement toxiques pour le foie des volailles et peuvent provoquer une mort foudroyante.
{{< /alert >}}

## La Méthode Martin : Préparer le pain sans danger

![Martin pressant vigoureusement du pain trempé au-dessus d'un seau, sous les yeux curieux d'Anna](methode-trempage.webp)

* **Le Trempage Total :** Utilisez uniquement du pain **sec et dur**. Faites-le tremper dans un grand volume d'eau pendant plusieurs heures.
* **L'Égouttage Rigoureux :** Pressez le pain très fortement entre vos mains pour extraire l'eau salée avant de le servir.

{{< alert icon="lightbulb" >}}
**Le conseil de Martin :** Ne donnez jamais de pain plus d'une fois par semaine. La portion ne doit pas dépasser l'équivalent d'une cuillère à soupe par poule.
{{< /alert >}}

## Pour une alimentation équilibrée
La santé de vos poules repose avant tout sur un mélange de graines de qualité et des minéraux adaptés.

| Produit | Utilité & Format | Voir le prix |
| :--- | :--- | :--- |
| **Graines Premium Eggersmann** | Mélange de céréales haute qualité. **Format 5 kg** idéal stockage. | [Voir sur Amazon](https://amzn.to/4sf8ODD) |
| **Grit & Minéraux Ida Plus** | Aide à la digestion et renforce la coquille. **Format 6 kg**. | [Voir sur Amazon](https://amzn.to/49dJQM6) |

{{< alert icon="circle-info" >}}
**Note de transparence :** Le mélange Eggersmann est un aliment complémentaire à 10% de protéines. Il est parfait en complément d'un jardin ou d'un apport en protéines pour atteindre les 16% nécessaires à la ponte.
{{< /alert >}}

## Conclusion
Le pain peut rester un plaisir partagé si vous respectez le protocole de trempage. N'oubliez pas que tout comme il faut neutraliser la solanine dans les [pommes de terre](/posts/pommes-de-terre-danger/), il faut neutraliser le sel du pain !

![Barnabé regardant une poule s'enfuir fièrement avec son morceau de pain pressé](friandise-raisonnable.webp)

---
**Pour aller plus loin :** [Guide Complet des Aliments Interdits et Toxiques](/posts/aliments-interdits-poules/)
"@

# Enregistrement du fichier index.md
[System.IO.File]::WriteAllLines("$postPath\index.md", $content, (New-Object System.Text.UTF8Encoding($false)))

Write-Host "🚀 L'article 'Pain' a été mis en ligne avec succès !" -ForegroundColor Cyan