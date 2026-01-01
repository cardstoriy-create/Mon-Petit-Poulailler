# =========================================================================================
# SCRIPT : fix-pommes-de-terre.ps1
# RÔLE : Standardisation Pro de l'article et renommage de fichier (sans accents)
# =========================================================================================

$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
$BaseDir = "C:\Users\madji\Documents\Mon-Petit-Poulailler\content\posts\pommes-de-terre-danger"
$ArticlePath = "$BaseDir\index.md"

# 1. Renommage physique de l'image (Gestion de l'accent)
$OldImg = "$BaseDir\cuisson-rinçage.webp"
$NewImg = "$BaseDir\cuisson-rincage.webp"

if (Test-Path $OldImg) {
    Rename-Item -Path $OldImg -NewName "cuisson-rincage.webp" -Force
    Write-Host "Image renommée : cuisson-rincage.webp" -ForegroundColor Yellow
}

# 2. Mise à jour du contenu de l'article
$Content = Get-Content -Path $ArticlePath -Raw

# Préparation du nouveau Front Matter avec Summary
$NewFrontMatter = @"
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
summary: "Donner des pommes de terre crues à vos poules est dangereux à cause de la solanine. Martin vous explique comment les cuire pour les transformer en friandise sécurisée."
---
"@

# Remplacement du Front Matter et de la référence à l'image
$UpdatedContent = $Content -replace "(?s)^---.*?---", $NewFrontMatter
$UpdatedContent = $UpdatedContent -replace "cuisson-rinçage.webp", "cuisson-rincage.webp"

# Sauvegarde sécurisée
[System.IO.File]::WriteAllText($ArticlePath, $UpdatedContent, $Utf8NoBom)

Write-Host "Article 'Pommes de terre' optimisé au Standard Pro !" -ForegroundColor Green.\scripts\fix-pommes-de-terre.ps1