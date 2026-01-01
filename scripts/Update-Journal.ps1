# =========================================================================================
# SCRIPT : update-journal.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Clôture de la session d'audit du 01/01/2026
# =========================================================================================

$Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
$JournalPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"

$Entry = @"

---
## 📅 Journal de bord - 01/01/2026 17:30
### ✅ Session Audit & Build Validée
- **Build Hugo** : Succès total (80 pages en 0.49s). Zéro erreur de lien ou d'image.
- **Articles Finalisés** : Poux Rouges, Pommes de Terre, Prédateurs (Tous en Standard Pro).
- **Prochain Objectif** : Audit de l'article N°16 (Accessoires Indispensables 2026).
"@

Add-Content -Path $JournalPath -Value $Entry -Encoding UTF8
Write-Host "Le journal de bord a été clôturé avec succès." -ForegroundColor Green