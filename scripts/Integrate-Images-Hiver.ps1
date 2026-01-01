# =========================================================================================
# SCRIPT : Integrate-Images-Hiver.ps1
# RÔLE : Intègre les visuels finalisés dans l'article Équipement Hiver
# =========================================================================================

$postPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\content\posts\equiper-poulailler-hiver"

$content = @"
---
title: "Équiper son Poulailler pour l'Hiver : Les 5 Incontournables de Martin"
slug: "equiper-poulailler-hiver"
description: "Isolation, chauffage radiant et abreuvoirs antigel : Martin vous présente les 5 équipements essentiels pour protéger vos poules du froid."
date: 2025-12-11T17:09:00Z
draft: false
tags: ["Matériel", "Hiver", "Conseils"]
categories: ["Conseils Élevage"]
author: "Martin"
showHero: true
feature: "feature.webp"
---

**L'hiver approche et avec lui le défi du gel et de l'humidité. Pour protéger vos poules, cinq équipements font la différence : une porte automatique isolante, un chauffage radiant sécurisé, un abreuvoir antigel, un éclairage adapté et une alimentation riche. Voici l'essentiel à retenir.**

---

L'hiver s'est installé à "Mon Petit Poulailler". On entend souvent que les poules sont robustes, mais c'est l'humidité combinée aux courants d'air qui représente le vrai danger. Avec **Julie**, nous avons identifié les cinq piliers pour sécuriser leur abri sans transformer le poulailler en étuve.

## 1. La Porte Automatique & l'Isolation
Le vent est l'ennemi n°1. L'objectif est de bloquer les courants d'air tout en conservant la chaleur naturelle des poules.

* **L'atout maître :** Une porte automatique garantit une fermeture hermétique dès la nuit tombée, emprisonnant les calories à l'intérieur tout en bloquant le vent glacial.
* **En savoir plus :** [Pourquoi la porte automatique est un investissement indispensable]({{< ref "porte-automatique-guide" >}})

## 2. Le Chauffage Radiant (Plaques)

![Pistache le chat profite du chauffage radiant pour piquer un dodo bien au chaud](chauffage-radiant.webp)

Contrairement aux lampes rouges énergivores et risquées, la plaque chauffante diffuse une chaleur douce par rayonnement. C'est l'équipement idéal pour les nuits de grand gel afin d'éviter les gelures de crêtes.

### Sélection de plaques chauffantes
| Modèle | Points forts | Voir le prix |
| :--- | :--- | :--- |
| **Plaque Classique** | Simple, robuste et économique. Idéale pour les petits abris. | [Voir sur Amazon](https://amzn.to/3L77fa2) |
| **Plaque Digitale Pro** | Télécommande et thermostat précis pour un contrôle total. | [Voir sur Amazon](https://amzn.to/4qvoiSh) |

## 3. L'Abreuvoir Chauffant (Antigel)

![Anna observe avec curiosité ses poules boire l'eau restée liquide grâce à l'abreuvoir chauffant](abreuvoirs-chauffants-guide.webp)

Une poule est composée à 75 % d'eau. Si son eau gèle, elle s'arrête de pondre instantanément. Maintenir l'eau liquide est donc la priorité absolue.

* **La solution :** Qu'il s'agisse d'une base chauffante à glisser sous votre bac ou d'un système à thermostat, il existe une solution pour chaque budget.
* **Guide Complet :** [Découvrez notre sélection des meilleurs abreuvoirs chauffants]({{< ref "abreuvoirs-chauffants-guide" >}})

## 4. L'Éclairage Additionnel
Le manque de lumière hivernale bloque l'ovulation. Pour maintenir une ponte régulière, un appoint lumineux est souvent nécessaire.

* **Astuce :** Utilisez une ampoule LED couplée à une minuterie pour simuler 14 heures de jour. Programmez l'allumage tôt le matin pour une transition naturelle.

## 5. Alimentation & Soins des Extrémités
La poule brûle énormément de calories pour lutter contre le froid. Sa ration doit être renforcée.

* **L'alimentation :** Augmentez la part de maïs et de tournesol le soir. La digestion lente produit une chaleur interne précieuse.
* **Le soin :** Appliquez une fine couche de vaseline sur les crêtes par grand froid pour créer un film protecteur.

{{< alert icon="lightbulb" >}}
**Le conseil de Martin :** En tant que menuisier, je vous recommande des perchoirs larges (5-10 cm). Cela permet aux poules de s'asseoir sur leurs pattes pour les protéger totalement du froid sous leur plumage.
{{< /alert >}}

## Conclusion
Préparer son poulailler pour l'hiver demande de la vigilance, mais avec ces équipements, vos poules traversent la saison en pleine santé. **Anna** et **Lucas** peuvent dormir tranquilles !

---
**À lire également :** [Neige et Gelures : Le guide de survie pour protéger vos poules]({{< ref "danger-hiver-poules" >}})
"@

[System.IO.File]::WriteAllLines("$postPath\index.md", $content, (New-Object System.Text.UTF8Encoding($false)))
Write-Host "✅ Article 'Équiper Hiver' mis à jour avec les images et légendes." -ForegroundColor Green