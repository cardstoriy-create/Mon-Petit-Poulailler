# =========================================================================================
# SCRIPT : Update-Journal-Final.ps1 (MODE APPEND)
# RÔLE : Enregistre la finalisation des 4 articles majeurs du jour
# =========================================================================================

$JournalPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$Date = Get-Date -Format "dd/MM/yyyy HH:mm"

$LogEntry = @"

---
## 📅 Journal de bord - $Date
### ✅ Session de Finalisation Massive
Aujourd'hui, quatre articles stratégiques ont été finalisés, illustrés et mis en ligne :

1. **Pourquoi les poules ne pondent plus ?** (`/posts/poules-ne-pondent-plus/`)
   - Analyse des causes (mue, saison, alimentation) et solutions.
2. **Préparer le poulailler pour l'hiver** (`/posts/danger-hiver-poules/`)
   - Focus sur l'isolation et les accessoires antigel.
3. **Le guide du pain pour les poules** (`/posts/donner-du-pain-poules/`)
   - Méthode de Martin pour neutraliser le sel et éviter les blocages du jabot.
4. **Construire son poulailler DIY ou Kit** (`/posts/construire-son-poulailler-guide/`)
   - Comparatif budget, règle des 3 poules et intégration de la sécurité automatique.

**Statut global :** Les piliers du contenu pour débutants sont désormais opérationnels avec visuels "Artist Grain" et liens d'affiliation.
"@

# Vérification de l'existence du fichier avant l'ajout
if (Test-Path $JournalPath) {
    Add-Content -Path $JournalPath -Value $LogEntry -Encoding UTF8
    Write-Host "✅ Journal de bord mis à jour avec les 4 articles finalisés." -ForegroundColor Green
} else {
    Write-Host "⚠️ Le fichier journal n'a pas été trouvé à l'emplacement prévu. Création d'un nouveau fichier." -ForegroundColor Yellow
    Set-Content -Path $JournalPath -Value "# Rapport de Projet - Mon Petit Poulailler`n$LogEntry" -Encoding UTF8
}