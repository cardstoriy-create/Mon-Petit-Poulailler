# Rapport de Projet : Mon Petit Poulailler

## 1. 🎯 Identité et Vision du Projet
Migration d'un blog Blogger vers Hugo. Transformation en guide élégant style "livre d'enfant".

* **Personnages :** Martin (expert bienveillant), Julie, Anna (la petite fille aux couettes), Lucas, Barnabé et Pistache.
* **Visuel :** Esthétique "fait main", couleurs douces, style **"Artist Grain"** (Aquarelle/Crayon).
* **Stratégie :** Affiliation Amazon propre, sécurité alimentaire stricte, ton pédagogique.

---

## 2. 📝 Inventaire du Contenu Éditorial

| N° | **Titre de l'Article** | Thématique | Statut |
| :--- | :--- | :--- | :--- |
| 10 | **Porte Automatique** | Matériel | ✅ Terminé |
| 11 | **Aliments Interdits** | Nutrition | 🎨 En cours (Illustration) |
| 12 | **Abreuvoirs Chauffants** | Matériel | ✅ Terminé |
| 13 | **Journal Jamstack** | Documentation | ✅ Créé (DOCS) |

---

## 3. ⚙️ Socle Technique et Infrastructure
* **Moteur :** Hugo v0.153.2 (Extended).
* **Thème :** Blowfish (Git Submodule).
* **Hébergement :** Cloudflare Pages.
* **Domaine :** `mon-petit-poulailler.com` (Namecheap + Cloudflare).
* **Infrastructure Google Cloud :** Projet actif nommé `mon-petit-poulailler-pro`.

---

## 4. 🛠️ Outils de Production (Version AI Pro)
* **IDE :** VS Code avec extension **Gemini Code Assist** (Officielle).
* **CLI :** **Google Cloud SDK** installé et authentifié sur `cardstoriy@gmail.com`.
* **Assistant IA :** Gemini 3.0 (Mode Agent activé).
* **Visuels :** **Nano Banana Pro** (Style Artist Grain - 100 images 4K/jour).
* **Quotas validés :** 500 prompts/jour, 200 actions agent/jour.

---

## 5. 🔄 Historique des Mises à Jour
* **25 Déc. :** Migration technique Hugo v0.153.2 stable et mise en ligne initiale.
* **26 Déc. :** Tentatives infructueuses avec "Roo Code" et "Continue" (Limites de débit API).
* **27 Déc. (Matin) :** Grand nettoyage. Désinstallation des extensions tierces.
* **27 Déc. (Midi) :** Création du projet Google Cloud `mon-petit-poulailler-pro` et installation du Google Cloud CLI (SDK) sur Windows.
* **27 Déc. (Après-midi) :** Configuration de la surveillance (Cloud Monitoring) et des alertes de quota par Email.

---

## 6. Mise à jour de session (27 Décembre 2025)

### 🎯 Décisions et État Technique
* **Validation de l'Infrastructure :** Le lien entre l'ordinateur local et le compte AI Pro est désormais opérationnel via le CLI (`gcloud`).
* **Simplification :** Abandon total des projets orphelins (RooCode, etc.) au profit d'un projet unique et professionnel.
* **Sécurisation :** Mise en place d'une règle d'alerte (Alert Policy) sur le service `cloudaicompanion.googleapis.com` avec notification par email en cas de pic d'utilisation (> 0.1/s).
* **Mode Agent :** L'agent Gemini est désormais capable d'analyser la `@codebase` pour comprendre la structure du site Hugo.

### 🚀 Étapes prioritaires pour la reprise
1. **Production Visuelle :** Générer l'image n°11 (Martin et Anna) avec le prompt "Artist Grain" validé.
2. **Intégration Hugo :** Placer le visuel dans `static/images/` et mettre à jour l'article `content/posts/article-11.md`.
3. **Nettoyage Cloud :** Supprimer définitivement les anciens projets inutilisés (RooCode, Continue, Default) dans la console Google Cloud.

* **27 Déc. (Fin de journée) :** * Intégration de l'article n°11 "Aliments Interdits".
    * Ajout de deux illustrations WebP (feature.webp en 16:9 et aliments-interdits.webp).
    * Mise à jour des standards visuels : rotation des personnages (Julie, Lucas, Anna) et présence des animaux (Barnabé, Pistache).
    * Correction de la sécurité avicole (Alerte Persine dans l'avocat).
    * Vérification réussie de l'activité API dans la console Google Cloud.