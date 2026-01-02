# =========================================================================================
# SCRIPT : write-about-content-correct.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Remplace le contenu de l'accueil (Cible: _index.fr.md)
# =========================================================================================

$indexPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\content\_index.fr.md"
$logPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)

# 1. Le contenu "Martin" (Format Markdown)
$content = @'
---
title: "Mon Petit Poulailler"
description: "Le coin des éleveurs amateurs et passionnés."
text_profile: true
---

Bienvenue chez nous ! 🌿

Moi, c'est **Martin**. Dans la vie, je suis menuisier (j'adore travailler le bois !), mais ma deuxième passion, ce sont mes poules. 🐔

Tout a commencé il y a quelques années quand ma fille m'a demandé : *"Papa, pourquoi on n'a pas des œufs dans le jardin ?"*. J'ai construit mon premier poulailler avec trois planches, et depuis, c'est devenu une vraie aventure familiale.

Ici, **pas de jargon compliqué**. Que vous ayez un grand jardin ou un petit coin de verdure, je partage avec vous :

* 🛠️ Mes **plans de construction** (solides et jolis !).
* 🌾 Mes conseils pour **bien nourrir** vos protégées.
* 🩹 Mes astuces de grand-père pour les **petits bobos**.

Mon but ? Que vos poules soient les plus heureuses du monde.

Installez-vous confortablement, on va parler plumes, paille et bons œufs frais ! 🥚✨
'@

# 2. Écriture du fichier (si le fichier n'existe pas, il sera créé)
[IO.File]::WriteAllLines($indexPath, $content, $Utf8NoBom)

# 3. Mise à jour du journal
$logEntry = @"

## 📅 Journal de bord - 02/01/2026 15:20
### 📝 Rédaction Contenu Accueil (Correction) - Étape 2ao-bis
- **Cible corrigée** : content/_index.fr.md (Fichier de langue spécifique).
- **Action** : Injection du storytelling de Martin.
- **Détail** : Ajout de 'text_profile: true' dans le frontmatter pour activer l'affichage sous le profil si le thème le demande.
"@

Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
Write-Host "✅ Présentation injectée dans _index.fr.md." -ForegroundColor Green