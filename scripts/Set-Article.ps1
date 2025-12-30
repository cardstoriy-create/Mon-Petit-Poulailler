# Script : Final-Deploy-Reglementation.ps1
# Mission : Déployer l'article Réglementation avec la partie Nuisances (SÉCURISÉ)
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)

# On cible précisément le dossier de la réglementation
$BaseDir = Get-Location
$DirPath = "$BaseDir/content/posts/reglementation-poulailler-ville"

# Création du dossier s'il n'existe pas
if (!(Test-Path $DirPath)) { 
    New-Item -ItemType Directory -Path $DirPath -Force 
}

$Content = @"
---
title: "Élever des poules en ville : Ce que dit la loi en 2026"
date: 2025-12-30T10:00:00Z
draft: false
author: "Martin"
categories: ["Conseils Élevage"]
tags: ["Réglementation", "Débutant", "Vie en Ville"]
summary: "Pouvons-nous installer un poulailler en ville en 2026 ? Julie et Martin vous expliquent les règles de bon voisinage et la législation actuelle pour un projet serein."
showTaxonomies: true
showHero: true
heroStyle: "basic"
featureImage: "feature.webp"
---

**Installer un poulailler en ville est autorisé en 2026 si l'on respecte les règles d'urbanisme : aucune déclaration sous 5m² en France (15m² en Wallonie). Pour éviter les troubles du voisinage, un entretien rigoureux est essentiel.**

![Julie discute avec sa voisine par-dessus la clôture du jardin](feature.webp)

Bonjour les amis ! Ici Martin. En cette nouvelle année 2026, de plus en plus de familles rejoignent l'aventure ! Avec Julie, nous voulions nous assurer que vous soyez parfaitement en règle.

---

## 1. La Réglementation en France : Les seuils clés

En France, vous êtes libre d'avoir des poules pour le plaisir !

{{< alert icon="lightbulb" >}}
**Les seuils de Martin :**
* **Moins de 5 m² :** Liberté totale, aucune formalité !
* **De 5 à 20 m² :** Déclaration préalable en mairie.
* **Plus de 20 m² :** Permis de construire requis.
{{< /alert >}}

## 2. Le Bon Voisinage : L'astuce de Julie

Le plus important en ville, c'est l'amitié avec vos voisins ! Un projet bien expliqué est un projet accepté.

* **Le Coq :** Bien que non interdit par la loi nationale, il est souvent déconseillé en zone urbaine dense à cause de son chant matinal.
* **L'Hygiène :** Un poulailler propre ne sent pas. Un entretien hebdomadaire évite toute plainte pour odeurs.
* **Partage :** Offrir quelques œufs frais à vos voisins est la meilleure façon de faire accepter vos petites pensionnaires !

![Lucas aide Martin à nettoyer le poulailler pour garder les voisins heureux](entretien-voisinage.webp)

## 3. Bruit et Nuisances : Ce qu'il faut savoir

La loi sanctionne les "troubles anormaux du voisinage". Pour rester dans la légalité, veillez à ce que le caquetage de vos poules reste raisonnable, surtout le matin. En ville, la discrétion est votre meilleure alliée pour une cohabitation sereine.

## Conclusion
Élever des poules en ville est une expérience merveilleuse pour toute la famille. En respectant ces quelques règles simples, vous transformerez votre jardin en un petit havre de paix productif et légal !
"@

# Écriture dans le fichier index.md du dossier REGLEMENTATION uniquement
[System.IO.File]::WriteAllLines("$DirPath/index.md", $Content, $Utf8NoBom)

Write-Host "✅ Article 'Réglementation Ville' mis à jour avec succès dans $DirPath" -ForegroundColor Green
Write-Host "ℹ️ L'article 'Accessoires' dans le dossier voisin reste inchangé." -ForegroundColor Cyan