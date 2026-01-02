# =========================================================================================
# SCRIPT : Deploy_Filigrane_Branding.ps1
# RÔLE : Commit et Push des visuels marqués vers Cloudflare Pages
# =========================================================================================

Write-Host "🚀 Préparation du déploiement final des visuels..." -ForegroundColor Cyan

# 1. Ajout de toutes les modifications (images filigranées + articles restaurés)
git add .

# 2. Création du commit avec un message explicite
$commitMessage = "🎨 UI/UX : Application du filigrane sur toutes les images et finalisation Standard Pro"
git commit -m $commitMessage

# 3. Push vers la branche master (Cloudflare Pages lancera le build automatiquement)
Write-Host "📤 Envoi vers Cloudflare Pages..." -ForegroundColor Yellow
git push origin master

# 4. Mise à jour du journal de bord
$reportPath = "C:\Users\madji\Documents\Mon-Petit-Poulailler\Rapport-de-Projet-Mon-Petit-Poulailler.md"
$logEntry = "`n## 📅 Journal de bord - 02/01/2026 20:30`n### 🚀 Déploiement Production`n- **Action** : Push global vers Cloudflare Pages.`n- **Contenu** : Mise en ligne des 77 images avec filigrane et de l'article Litière validé.`n- **État** : CI/CD en cours sur Cloudflare.`n"
Add-Content -Path $reportPath -Value $logEntry -Encoding UTF8

Write-Host "✅ Site propulsé ! Les images apparaîtront avec le filigrane d'ici quelques minutes." -ForegroundColor Green