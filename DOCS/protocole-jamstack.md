📔 Journal de Suivi : Protocole Jamstack Mon Petit Poulailler
1. Initialisation et Configuration Local
Avant de coder, le programmeur prépare son environnement de travail dans Visual Studio Code (VS Code).

Structure du projet : Utiliser la commande hugo new site nom-du-projet.

Gestion des thèmes : Ajouter le thème en tant que Git Submodule pour garder le code séparé du contenu.

Extensions VS Code : Installer Hugo Language Support pour la coloration et GitLens pour le suivi.

2. Le Cycle de Développement Iterative Loop
C'est la phase de création quotidienne.

Lancement du serveur local : Utiliser hugo server -D pour visualiser les changements en temps réel.

Rédaction en Markdown : Créer du contenu via hugo new posts/mon-article.md.

Gestion des Assets : Placer les images dans les dossiers static/ ou assets/.

3. Protocole de Gestion de Version GitHub
C'est ici que la collaboration et la sauvegarde interviennent.

Le fichier .gitignore : Exclure le dossier public/ car Cloudflare le reconstruira.

Branches de fonctionnalités : Ne jamais travailler directement sur la branche main.

Commits atomiques : Faire des petits commits avec des messages clairs.

4. Déploiement Continu CI/CD avec Cloudflare Pages
L'intégration entre GitHub et Cloudflare Pages automatise la mise en ligne.

Connexion : Lier le dépôt GitHub à Cloudflare Pages.

Configuration du Build : Framework Hugo, commande hugo --gc --minify.

Environnement : Définir HUGO_VERSION à 0.153.2 et GO_VERSION à 1.24.0.

5. Optimisation et Sécurité Cloudflare
Configuration des protocoles réseau une fois le site en ligne.

Domaine,Action recommandée
DNS,Utiliser Cloudflare pour bénéficier de la protection DDoS.
SSL/TLS,Activer le mode Full (Strict) pour chiffrer le trafic.
Speed,Désactiver Rocket Loader pour éviter les bugs d'affichage du thème.
Performance,Activer Auto Minify et Brotli pour la vitesse.