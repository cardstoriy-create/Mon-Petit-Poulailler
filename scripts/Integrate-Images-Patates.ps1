# =========================================================================================
# SCRIPT : Integrate-Images-Patates.ps1
# RÔLE : Intègre les visuels finalisés dans l'article Pommes de Terre
# =========================================================================================

$postPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\content\posts\pommes-de-terre-danger"

$content = @"
---
title: "Épluchures de pommes de terre aux poules : Crues ou cuites ? Le Guide de Sécurité"
slug: "pommes-de-terre-danger"
date: 2025-12-11T16:54:00Z
draft: false
tags: ["Alimentation", "Sécurité", "Débutant"]
categories: ["Conseils Élevage"]
author: "Martin"
showHero: true
feature: "feature.webp"
---

**Il ne faut jamais donner d'épluchures de pommes de terre crues aux poules car elles contiennent de la solanine, une substance toxique pouvant entraîner une paralysie mortelle. Pour les offrir en toute sécurité, vous devez impérativement les cuire à l'eau pendant 20 minutes, jeter l'eau de cuisson et les distribuer avec modération.**

---

À "Mon Petit Poulailler", rien ne se perd ! **Anna** adore m'aider à trier les restes de cuisine pour les donner à nos pondeuses, sous la surveillance toujours très intéressée de **Barnabé**. Mais attention : recycler ses déchets est une excellente idée, à condition de ne pas transformer une friandise en danger pour la santé de vos poules.

![Martin explique à Anna comment repérer les germes et les zones vertes dangereuses sur les pommes de terre](feature.webp)

## Pourquoi les épluchures crues sont-elles toxiques ?
Le danger principal porte un nom : la **solanine**. C'est un poison naturel que l'on trouve dans les légumes de la famille des Solanacées (pommes de terre, mais aussi tomates vertes ou aubergines).

{{< alert icon="triangle-exclamation" cardColor="#e63946" >}}
**DANGER MORTEL :** La solanine est concentrée dans la **peau**, les **germes** et les **parties vertes**. Une ingestion de pommes de terre crues ou verdies peut tuer une poule en quelques heures (paralysie respiratoire).
{{< /alert >}}

## Le Protocole de Sécurité (La méthode Martin)

![La cuisson à l'eau bouillante est indispensable pour neutraliser la solanine des épluchures](cuisson-rinçage.webp)

Heureusement, la solanine est détruite par la chaleur. Pour valoriser vos épluchures, suivez rigoureusement ces étapes :

1. **Le Tri :** Jetez impérativement toutes les parties vertes et les germes. Même cuits, ils restent dangereux.
2. **La Cuisson :** Faites bouillir les épluchures pendant **15 à 20 minutes** jusqu'à ce qu'elles soient bien tendres.
3. **Le Rinçage :** Égouttez soigneusement.

{{< alert icon="lightbulb" >}}
**Le conseil de Martin :** Jetez impérativement l'eau de cuisson ! La solanine s'y dissout pendant l'ébullition. Si vous utilisez cette eau pour préparer une pâtée, vous réintroduisez le poison que vous veniez d'éliminer.
{{< /alert >}}

## Équilibrer les restes de cuisine
Les épluchures cuites sont une source d'énergie (amidon), mais elles sont pauvres en protéines et en calcium. Pour maintenir la ponte et la santé de vos poules, vous devez compenser ces manques.

| Produit | Utilité | Voir le prix |
| :--- | :--- | :--- |
| **Mélange de Graines Premium** | Apport en céréales de haute qualité (Sans OGM). | [Voir sur Amazon](https://amzn.to/4sf8ODD) |
| **Grit & Minéraux** | Aide à la digestion et renforce la coquille des œufs. | [Voir sur Amazon](https://amzn.to/49dJQM6) |

## La règle d'or des quantités : Pas d'excès !

![Anna distribue la pâtée tiède aux poules et au coq (Léon) sous le regard attentif de Barnabé](récompense-Barnabé.webp)

Même bien cuites, les pommes de terre ne doivent jamais remplacer le mélange de graines.

**Respectez la règle des 15% :** Les restes de cuisine ne doivent pas représenter plus d'une petite cuillère à soupe par poule et par jour. Un excès favoriserait l'obésité de vos pondeuses et ferait chuter la ponte.

## Conclusion
Recycler ses épluchures de pommes de terre est un geste écologique et économique, mais la **cuisson à l'eau** est votre seule garantie de sécurité. En respectant ces quelques réflexes, vous offrirez une friandise énergétique appréciée sans prendre le moindre risque !

---
**Pour aller plus loin :** [Aliments Interdits et Toxiques pour les Poules : Le Guide Complet du Nouvel Éleveur](/posts/aliments-interdits-poules/)
"@

[System.IO.File]::WriteAllLines("$postPath\index.md", $content, (New-Object System.Text.UTF8Encoding($false)))
Write-Host "✅ Article 'Pommes de Terre' finalisé avec succès." -ForegroundColor Green