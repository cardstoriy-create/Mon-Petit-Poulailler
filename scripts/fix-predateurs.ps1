# =========================================================================================
# SCRIPT : fix-predateurs.ps1
# RÔLE : Correction identité Barnabé, renommage image et optimisation SEO
# =========================================================================================

$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
$BaseDir = "C:\Users\madji\Documents\Mon-Petit-Poulailler\content\posts\proteger-poulailler-predateurs"
$ArticlePath = "$BaseDir\index.md"

# 1. Renommage physique de l'image grillage
$OldImg = "$BaseDir\Grillage_L.webp"
$NewImg = "$BaseDir\grillage-l.webp"

if (Test-Path $OldImg) {
    Rename-Item -Path $OldImg -NewName "grillage-l.webp" -Force
    Write-Host "Image renommée : grillage-l.webp" -ForegroundColor Yellow
}

# 2. Mise à jour du contenu de l'article
$Content = Get-Content -Path $ArticlePath -Raw

# Préparation du nouveau Front Matter
$NewFrontMatter = @"
---
title: "Comment protéger vos poules des prédateurs nocturnes : Les conseils de Martin"
slug: "proteger-poulailler-predateurs"
date: 2025-12-27T10:00:00Z
draft: false
tags: ["Sécurité", "Prédateurs", "Matériel"]
categories: ["Conseils Élevage"]
author: "Martin"
showHero: true
feature: "feature.webp"
summary: "Renards, fouines ou rats : sécurisez votre poulailler avec les conseils de Martin et la vigilance de Barnabé. Découvrez les 3 points de contrôle essentiels."
---
"@

# Remplacement du Front Matter
$UpdatedContent = $Content -replace "(?s)^---.*?---", $NewFrontMatter

# Correction de la race de Barnabé et du lien image
$UpdatedContent = $UpdatedContent -replace "Golden Retriever", "Border Collie Sable"
$UpdatedContent = $UpdatedContent -replace "Grillage_L.webp", "grillage-l.webp"

# Sauvegarde forcée en UTF-8 sans BOM
[System.IO.File]::WriteAllText($ArticlePath, $UpdatedContent, $Utf8NoBom)

Write-Host "Article 'Prédateurs' corrigé et harmonisé au Standard Pro !" -ForegroundColor Green