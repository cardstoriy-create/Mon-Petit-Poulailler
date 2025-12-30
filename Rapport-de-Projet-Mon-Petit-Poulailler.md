# Rapport de Projet : Mon Petit Poulailler

## 1. Ã°Å¸Å½Â¯ IdentitÃƒÂ© et Vision du Projet
Migration d'un blog Blogger vers Hugo. Transformation en guide ÃƒÂ©lÃƒÂ©gant style "livre d'enfant".

* **Personnages :** Martin (expert bienveillant), Julie (la maman), Anna (la petite fille aux couettes), Lucas, BarnabÃƒÂ© (le chien) et Pistache (le chat).
* **Visuel :** EsthÃƒÂ©tique "fait main", couleurs douces, style **"Artist Grain"** (Aquarelle/Crayon).
* **StratÃƒÂ©gie :** Affiliation Amazon propre, sÃƒÂ©curitÃƒÂ© alimentaire stricte, ton pÃƒÂ©dagogique.

---

## 2. Ã°Å¸â€œÂ Inventaire du Contenu Ãƒâ€°ditorial

| NÃ‚Â° | **Titre de l'Article** | ThÃƒÂ©matique | Statut |
| :--- | :--- | :--- | :--- |
| 10 | **Porte Automatique** | MatÃƒÂ©riel | Ã¢Å“â€¦ TerminÃƒÂ© |
| 11 | **Aliments Interdits** | Nutrition | Ã¢Å“â€¦ TerminÃƒÂ© |
| 12 | **Abreuvoirs Chauffants** | MatÃƒÂ©riel | Ã¢Å“â€¦ TerminÃƒÂ© |
| 13 | **Journal Jamstack** | Documentation | Ã¢Å“â€¦ CrÃƒÂ©ÃƒÂ© (DOCS) |
| 16 | **Accessoires Indispensables** | MatÃƒÂ©riel | Ã¢Å“â€¦ TerminÃƒÂ© |
| 17 | **RÃƒÂ©glementation Ville** | LÃƒÂ©gislatif | Ã¢Å“â€¦ TerminÃƒÂ© |

---

## 3. Ã¢Å¡â„¢Ã¯Â¸Â Socle Technique et Infrastructure
* **Moteur :** Hugo v0.152.2 (Extended).
* **ThÃƒÂ¨me :** Blowfish (Git Submodule).
* **HÃƒÂ©bergement :** Cloudflare Pages.
* **Domaine :** `mon-petit-poulailler.com` (Namecheap + Cloudflare).
* **Infrastructure Google Cloud :** Projet actif nommÃƒÂ© `mon-petit-poulailler-pro`.

---

## 4. Ã°Å¸â€ºÂ Ã¯Â¸Â Outils de Production (Version AI Pro)
* **IDE :** VS Code avec extension **Gemini Code Assist** (Officielle).
* **CLI :** **Google Cloud SDK** installÃƒÂ© et authentifiÃƒÂ© sur `cardstoriy@gmail.com`.
* **Assistant IA :** Gemini 3.0 (Mode Agent activÃƒÂ©).
* **Visuels :** **Nano Banana Pro** (Style Artist Grain - 100 images 4K/jour).
* **Quotas validÃƒÂ©s :** 500 prompts/jour, 200 actions agent/jour.

---

## 5. Ã°Å¸â€â€ž Historique des Mises ÃƒÂ  Jour
* **25 DÃƒÂ©c. :** Migration technique Hugo v0.152.2 stable et mise en ligne initiale.
* **26 DÃƒÂ©c. :** Tentatives infructueuses avec "Roo Code" et "Continue" (Limites de dÃƒÂ©bit API).
* **27 DÃƒÂ©c. (Matin) :** Grand nettoyage. DÃƒÂ©sinstallation des extensions tierces.
* **27 DÃƒÂ©c. (Midi) :** CrÃƒÂ©ation du projet Google Cloud `mon-petit-poulailler-pro` et installation du Google Cloud CLI (SDK) sur Windows.
* **27 DÃƒÂ©c. (AprÃƒÂ¨s-midi) :** Configuration de la surveillance (Cloud Monitoring) et des alertes de quota par Email.

---

## 6. Mise ÃƒÂ  jour de session (27 DÃƒÂ©cembre 2025)

### Ã°Å¸Å½Â¯ DÃƒÂ©cisions et Ãƒâ€°tat Technique
* **Validation de l'Infrastructure :** Le lien entre l'ordinateur local et le compte AI Pro est dÃƒÂ©sormais opÃƒÂ©rationnel via le CLI (`gcloud`).
* **Simplification :** Abandon total des projets orphelins (RooCode, etc.) au profit d'un projet unique et professionnel.
* **SÃƒÂ©curisation :** Mise en place d'une rÃƒÂ¨gle d'alerte (Alert Policy) sur le service `cloudaicompanion.googleapis.com` avec notification par email en cas de pic d'utilisation (> 0.1/s).
* **Mode Agent :** L'agent Gemini est dÃƒÂ©sormais capable d'analyser la `@codebase` pour comprendre la structure du site Hugo.

### Ã°Å¸Å¡â‚¬ Ãƒâ€°tapes prioritaires pour la reprise
1. **Production Visuelle :** GÃƒÂ©nÃƒÂ©rer l'image nÃ‚Â°11 (Martin et Anna) avec le prompt "Artist Grain" validÃƒÂ©.
2. **IntÃƒÂ©gration Hugo :** Placer le visuel dans `static/images/` et mettre ÃƒÂ  jour l'article `content/posts/article-11.md`.
3. **Nettoyage Cloud :** Supprimer dÃƒÂ©finitivement les anciens projets inutilisÃƒÂ©s (RooCode, Continue, Default) dans la console Google Cloud.

* **27 DÃƒÂ©c. (Fin de journÃƒÂ©e) :** * IntÃƒÂ©gration de l'article nÃ‚Â°11 "Aliments Interdits".
    * Ajout de deux illustrations WebP (feature.webp en 16:9 et aliments-interdits.webp).
    * Mise ÃƒÂ  jour des standards visuels : rotation des personnages (Julie, Lucas, Anna) et prÃƒÂ©sence des animaux (BarnabÃƒÂ©, Pistache).
    * Correction de la sÃƒÂ©curitÃƒÂ© avicole (Alerte Persine dans l'avocat).
    * VÃƒÂ©rification rÃƒÂ©ussie de l'activitÃƒÂ© API dans la console Google Cloud.

### Ã¢Å“â€¦ Session du 27 DÃƒÂ©cembre - Synchronisation Jamstack
* **Action :** Audit de conformitÃƒÂ© avec `DOCS/protocole-jamstack.md`.
* **RÃƒÂ©sultat :** Synchronisation rÃƒÂ©ussie des versions sur Cloudflare Pages (Hugo v0.152.2 / Go 1.24.0).
* **Statut technique :** Workflow CI/CD validÃƒÂ© ÃƒÂ  100%. Le rendu local est dÃƒÂ©sormais identique au rendu en ligne.

### Session du 28 dÃƒÂ©cembre 2025
- **Article nÃ‚Â°14 (Protection contre les prÃƒÂ©dateurs)** : RÃƒÂ©daction complÃƒÂ¨te centrÃƒÂ©e sur Martin et BarnabÃƒÂ©.
- **Gestion des visuels** : CrÃƒÂ©ation et intÃƒÂ©gration de deux illustrations (feature.webp et securite-enfants.webp) via Page Bundles.
- **Maintenance technique** : Correction du Front Matter avec **Gemini Code Assist** pour activer l'image Hero (`showHero: true`).
- **DÃƒÂ©ploiement** : Synchronisation rÃƒÂ©ussie via GitHub (commit `54fbe17`).

- **Article nÃ‚Â°15 (Guide des Races)** : "Quelle est la Meilleure Race de Poule pour un DÃƒÂ©butant ? Le Guide Ultime" finalisÃƒÂ© et publiÃƒÂ©.
- **Optimisation visuelle** : CrÃƒÂ©ation et intÃƒÂ©gration de 3 illustrations WebP avec des angles de vue variÃƒÂ©s (plongÃƒÂ©e pour la poule rousse, contre-plongÃƒÂ©e pour l'image Hero).
- **DÃƒÂ©ploiement** : Push GitHub effectuÃƒÂ© avec succÃƒÂ¨s (commit `baeedf6`).

## 7. Ã°Å¸Å¡Â§ Phase de Consolidation (En cours)

**StratÃƒÂ©gie :** Audit complet et remise ÃƒÂ  niveau des articles existants pour garantir une base technique et visuelle parfaite.

### Ã¢Å“â€¦ Actions rÃƒÂ©alisÃƒÂ©es (Session du 28/12/2025)

### Ã°Å¸Å½Â¨ Design & Interface
- **Justification du texte :** Modification du fichier `custom.css` pour forcer l'alignement justifiÃƒÂ© du texte sur l'ensemble du site.
- **Optimisation des encadrÃƒÂ©s Amazon :** Validation de l'alignement ÃƒÂ  droite des blocs de sÃƒÂ©lection de produits pour une meilleure intÃƒÂ©gration visuelle.
- **Standardisation Header :** Configuration de `showHero: true` pour utiliser systÃƒÂ©matiquement l'image `feature.webp` en banniÃƒÂ¨re de page.

### Ã¢Å¡â€“Ã¯Â¸Â ConformitÃƒÂ©
- **VÃƒÂ©rification Amazon :** Confirmation de la visibilitÃƒÂ© de la mention lÃƒÂ©gale obligatoire dans le footer de toutes les pages.

### Ã°Å¸â€â€” StratÃƒÂ©gie d'Affiliation (Mise ÃƒÂ  jour 18h20)
- **Format de sÃƒÂ©lection produits :** Abandon des encadrÃƒÂ©s visuels (shortcodes) au profit de **Tableaux Comparatifs Markdown**.
- **Gestion des liens :** Utilisation exclusive de liens courts manuels (**amzn.to**) gÃƒÂ©nÃƒÂ©rÃƒÂ©s via la barre d'outils Partenaire Amazon (Stripe).
- **Validation :** Format appliquÃƒÂ© et validÃƒÂ© sur l'article nÃ‚Â°10 (Porte Automatique).


## Ã¢Å“â€¦ Actions rÃƒÂ©alisÃƒÂ©es (Session du 28/12/2025 - SoirÃƒÂ©e)

### Ã°Å¸â€â€” StratÃƒÂ©gie d'Affiliation & Design
- **Adoption des Tableaux Comparatifs :** Remplacement des encadrÃƒÂ©s visuels par des tableaux Markdown pour la sÃƒÂ©lection de produits (Meilleure lisibilitÃƒÂ© technique et conversion).
- **Gestion des Liens :** Passage aux liens directs manuels (`amzn.to` via Stripe) pour garantir le tracking.
- **Calibrage "Familial" (RÃƒÂ¨gle d'Or) :** Toutes les recommandations sont dÃƒÂ©sormais calibrÃƒÂ©es pour un **minimum de 3 ÃƒÂ  4 poules** :
  - *Poulaillers :* Exclusion des "mini-kits" (< 100Ã¢â€šÂ¬). Seuls les modÃƒÂ¨les offrant une surface dortoir suffisante pour un trio sont validÃƒÂ©s.
  - *Mangeoires :* Minimum **3 ÃƒÂ  5 kg** (pour ÃƒÂ©viter le remplissage quotidien).
  - *Abreuvoirs :* Minimum **5 ÃƒÂ  10 Litres** (marge de sÃƒÂ©curitÃƒÂ© ÃƒÂ©tÃƒÂ©).
- **Politique de Marque (Amazon) :**
  - **Marques Officielles :** Citation explicite autorisÃƒÂ©e (ex: ChickenGuard, Novital, Omlet).
  - **Marques "Distributeurs/InventÃƒÂ©es" :** Interdiction de citer les "marques" des vendeurs Amazon. Utilisation obligatoire de dÃƒÂ©nominations gÃƒÂ©nÃƒÂ©riques descriptives.

### Ã°Å¸â€ºÂ Ã¯Â¸Â Validation & Nettoyage des Articles (7/15)
Les articles suivants sont passÃƒÂ©s au standard "Pro" (Markdown propre, Front Matter standardisÃƒÂ©, Tableaux de produits validÃƒÂ©s) :

#### Ã°Å¸â€Â¹ Lot 1 (MatÃƒÂ©riel Technique)
1. **Porte Automatique :** Tableau comparatif intÃƒÂ©grÃƒÂ© (Solaire vs Piles).
2. **PrÃƒÂ©dateurs Nocturnes :** Correction contenu + Maillage Interne vers Porte Auto.
3. **Les 10 Accessoires Indispensables :** Nettoyage code parasite + Tableau "Top 3".
4. **Abreuvoirs Chauffants :** Correction technique majeure (Base chauffante vs C" immergÃƒÂ©).

#### Ã°Å¸â€Â¹ Lot 2 (Vie du Poulailler)
5. **Pourquoi elles ne pondent plus :** Nettoyage complet + Tableau Solutions.
6. **Construire vs Kit (Le Guide Budget) :** Ajout de la rÃƒÂ¨gle d'or "3-4 poules minimum".
7. **Quelle LitiÃƒÂ¨re Choisir (CrÃƒÂ©ation) :** Article rÃƒÂ©digÃƒÂ© ÃƒÂ  100% (InÃƒÂ©dit) + Terre de DiatomÃƒÂ©e.

### Ã°Å¸Å¡â‚¬ Ãƒâ€°tat d'avancement
- **7 Articles validÃƒÂ©s ÃƒÂ  100%** (Sur ~15).
- **Prochaines ÃƒÂ©tapes :** Article "Quelle Race Choisir ?", "Avoir un Coq", Nettoyage articles alimentaires.

---

## Ã¢ÂÅ’ Rapport d'Alerte : Session du 29/12/2025

### Ã¢Å¡Â Ã¯Â¸Â Ãƒâ€°tat Technique : CRITIQUE
- **ProblÃƒÂ¨me Majeur :** Ãƒâ€°chec de la restauration de l'encodage. Le site est actuellement "cassÃƒÂ©".
- **Statut Hugo Server :** Ã°Å¸â€ºâ€˜ **HS (Hors Service)**. Le serveur ne compile plus suite ÃƒÂ  des erreurs de syntaxe dans le Front Matter.
- **IntÃƒÂ©gritÃƒÂ© du texte :** La corruption des caractÃƒÂ¨res spÃƒÂ©ciaux persiste et s'est aggravÃƒÂ©e.

### Ã°Å¸â€ºÂ Ã¯Â¸Â Journal des interventions (Ãƒâ€°checs constatÃƒÂ©s)
1. **Tentative de rÃƒÂ©paration manuelle via Gemini Code Assist :** AbandonnÃƒÂ©e (processus trop lourd).
2. **Restauration Manuelle :** Reprise globale des fichiers par l'utilisateur pour stabiliser le Front Matter et le texte.
3. **Audit de Peaufinage :** Phase de vÃƒÂ©rification un par un avant toute nouvelle rÃƒÂ©daction.

---

## 8. Ã°Å¸â€œâ€š Ãƒâ€°tat des Lieux Technique des Fichiers (Audit Final Session)
*DerniÃƒÂ¨re synchronisation de l'arborescence : 29 DÃƒÂ©cembre 2025 (SoirÃƒÂ©e).*

| Dossier (Page Bundle) | Ãƒâ€°tat de SantÃƒÂ© | Visuel (Artist Grain) |
| :--- | :--- | :--- |
| `abreuvoirs-chauffants-guide` | Ã¢Å“â€¦ OK (Standard Pro) | Ã°Å¸Å¸Â¢ Existe (Ãƒâ‚¬ harmoniser) |
| `accessoires-debutant-poules` | Ã¢Å“â€¦ OK (Standard Pro) | Ã°Å¸â€Â´ Ãƒâ‚¬ crÃƒÂ©er |
| `aliments-interdits-poules` | Ã¢Å“â€¦ OK (Standard Pro) | Ã°Å¸Å¸Â¢ Existe (Ãƒâ‚¬ harmoniser) |
| `choisir-litiere-poules` | Ã¢Å“â€¦ OK (Standard Pro) | Ã°Å¸â€Â´ Ãƒâ‚¬ crÃƒÂ©er |
| `construire-son-poulailler-guide` | Ã¢Å“â€¦ OK | Ã°Å¸â€Â´ Ãƒâ‚¬ crÃƒÂ©er |
| `danger-hiver-poules` | Ã¢Å“â€¦ OK | Ã°Å¸â€Â´ Ãƒâ‚¬ crÃƒÂ©er |
| `donner-du-pain-poules` | Ã¢Å“â€¦ OK | Ã°Å¸â€Â´ Ãƒâ‚¬ crÃƒÂ©er |
| `equiper-poulailler-hiver` | Ã¢Å“â€¦ OK | Ã°Å¸â€Â´ Ãƒâ‚¬ crÃƒÂ©er |
| `meilleure-race-debutant` | Ã¢Å“â€¦ OK (Standard Pro) | Ã°Å¸Å¸Â¢ Existe (Ãƒâ‚¬ harmoniser) |
| `pommes-de-terre-danger` | Ã¢Å“â€¦ OK | Ã°Å¸â€Â´ Ãƒâ‚¬ crÃƒÂ©er |
| `porte-automatique-guide` | Ã¢Å“â€¦ OK (RÃƒÂ©fÃƒÂ©rence) | Ã°Å¸Å¸Â¢ Existe (Ãƒâ‚¬ harmoniser) |
| `poules-ne-pondent-plus` | Ã¢Å“â€¦ OK (Standard Pro) | Ã°Å¸â€Â´ Ãƒâ‚¬ crÃƒÂ©er |
| `poux-rouges-guide` | Ã¢Å“â€¦ OK | Ã°Å¸â€Â´ Ãƒâ‚¬ crÃƒÂ©er |
| `proteger-poulailler-predateurs` | Ã¢Å“â€¦ OK | Ã°Å¸Å¸Â¢ Existe (Ãƒâ‚¬ harmoniser) |
| `reglementation-poulailler-ville` | Ã¢Å“â€¦ OK (Standard Pro) | Ã°Å¸â€Â´ Ãƒâ‚¬ crÃƒÂ©er |

### Ã¢Å“â€¦ Session du 29 DÃƒÂ©cembre 2025 (AprÃƒÂ¨s-midi) - Consolidation
**Objectif :** Ãƒâ€°radication des erreurs d'encodage et dÃƒÂ©ploiement du nouveau systÃƒÂ¨me d'alertes Blowfish.

#### Ã°Å¸â€ºÂ Ã¯Â¸Â Articles mis en conformitÃƒÂ© "Standard Pro" :
1. **Porte Automatique** : Nettoyage UTF-8 + Tableau comparatif + Alert icon.
2. **Abreuvoirs Chauffants** : Correction encodage + Validation affiliation.
3. **Pourquoi mes poules ne pondent plus** : Nettoyage final UTF-8 + Harmonisation stylistique.
4. **Accessoires DÃƒÂ©butants** : RÃƒÂ©vision check-list + Optimisation tableau.

---

## 6. Ã¢Å“â€¦ Session du 29 DÃƒÂ©cembre 2025 (SoirÃƒÂ©e) - Expansion et Mise aux Normes

### Ã°Å¸Å¡â‚¬ Accomplissements Majeurs
* **Finalisation de l'article "Accessoires Indispensables"** : IntÃƒÂ©gration d'un ton narratif humoristique (Pistache le chat dans le nichoir) et check-list technique.
* **CrÃƒÂ©ation de l'article "RÃƒÂ©glementation en Ville"** : RÃƒÂ©daction d'un guide biculturel (**France / Belgique**) traitant des seuils de surface et des nuisances sonores.
* **Validation du "Standard Pro"** : Utilisation systÃƒÂ©matique des shortcodes `{{< alert >}}` et correction des Front Matter.

### Ã°Å¸Å½Â¨ Ãƒâ€°volution de la Charte Iconographique
* **Diversification des Personnages** : IntÃƒÂ©gration active de la maman (Julie), du chat (Pistache) et du chien (BarnabÃƒÂ©) pour renforcer l'aspect familial.
* **Prompts "Full Bleed"** : Adoption du format sans marges blanches pour une immersion totale.

### Ã°Å¸â€ºÂ Ã¯Â¸Â Ãƒâ€°tat Technique au 29/12 (Fin de session)
* **Encodage** : 100% UTF-8 (Fichiers assainis).
* **Images** : Protocoles de prompts validÃƒÂ©s pour la "liste rouge".

---

## 7. Ã°Å¸Å¡Â§ Prochaines Ãƒâ€°tapes
1. **Publication** : Mettre en ligne l'article `reglementation-poulailler-ville` (Visuels validÃƒÂ©s et intÃƒÂ©grÃƒÂ©s).
2. **Audit SEO** : VÃƒÂ©rification finale des balises Alt et mÃƒÂ©tadonnÃƒÂ©es avant indexation.
3. **RÃƒÂ©daction** : Attaquer l'article `poux-rouges-guide` (La Liste Rouge) avec une approche rassurante et familiale.