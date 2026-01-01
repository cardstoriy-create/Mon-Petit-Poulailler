# =========================================================================================
# SCRIPT : Update-Journal-Pain.ps1 (MODE APPEND - SUIVI LOG)
# RÔLE : Ajoute une entrée au journal sans effacer l'historique
# =========================================================================================

$JournalPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Date = Get-Date -Format "dd/MM/yyyy HH:mm"

$LogEntry = @"

---
## 📅 Journal de bord - $Date
### 📝 Article "Pain" - Audit et Structure
- **Statut** : Structure "Standard Pro" appliquée (Description SEO, FrontMatter corrigé).
- **Contenu** : Protocole de trempage/pressage de Martin intégré.
- **Affiliation** : Liens validés pour le mélange Eggersmann et le Grit Ida Plus.
- **Visuels** : 3 emplacements pour images "Artist Grain" créés.
"@

# Ajout à la fin du fichier sans écraser le reste
Add-Content -Path $JournalPath -Value $LogEntry -Encoding UTF8

Write-Host "✅ Journal de bord mis à jour (Article Pain) en mode APPEND." -ForegroundColor Green