# E2MultiPortal

Plugin IPTV multi-portails pour **Enigma2** (OpenATV / sf8008 et
compatibles) : gestion de plusieurs serveurs **MAG/Stalker Portal** et
**Xtream Codes**, avec Live TV, VOD, Séries, interface web embarquée et
gestion des posters/infos via TMDB.

---

## ✨ Fonctionnalités

- **Multi-serveurs** : ajoutez et basculez entre plusieurs portails MAG et
  comptes Xtream Codes depuis l'écran CONFIG.
- **Live TV / VOD / Séries** avec colonnes catégories → liste → infos +
  affiche, et cache local pour des chargements rapides.
- **Recherche dédiée** (touche BLEUE) dans VOD et Séries.
- **Lecture continue** : revenir à la liste ne coupe pas le flux en cours.
- **Choix du lecteur vidéo** (GStreamer / ExtEplayer3 / GstPlayer) depuis
  CONFIG.
- **Interface web embarquée** (port 8070) pour ajouter/éditer/tester vos
  serveurs depuis un navigateur.
- **Date d'expiration** du serveur actif affichée sur l'écran principal.
- Posters et informations (titre, année, genre, note, synopsis) via TMDB.

---

## 📲 Installation / Mise à jour (Telnet)

Connectez-vous en Telnet sur votre box, puis lancez :

```sh
wget -q "--no-check-certificate" https://raw.githubusercontent.com/electroyassine/E2MultiPortal/refs/heads/main/install.sh -O - | /bin/sh
```

Cette commande :

1. télécharge la dernière version (`E2MultiPortal.tar.gz`) ;
2. supprime l'ancienne installation si elle existe ;
3. extrait directement dans
   `/usr/lib/enigma2/python/Plugins/Extensions/` ;
4. redémarre l'interface Enigma2 (`init 4` puis `init 3`).

Le plugin apparaît ensuite dans le **menu principal → E2MultiPortal**.

> 💡 La configuration des serveurs (`/etc/enigma2/E2MultiPortal/servers.json`)
> n'est pas supprimée lors d'une mise à jour : vos serveurs restent
> enregistrés.

### Installation manuelle

1. Téléchargez
   [`E2MultiPortal.tar.gz`](https://github.com/electroyassine/E2MultiPortal/raw/refs/heads/main/E2MultiPortal.tar.gz).
2. Extrayez le dossier `E2MultiPortal` dans
   `/usr/lib/enigma2/python/Plugins/Extensions/` :
   ```sh
   tar -xzf E2MultiPortal.tar.gz -C /usr/lib/enigma2/python/Plugins/Extensions/
   ```
3. Redémarrez Enigma2 (`init 4` puis `init 3`, ou via le menu).

---

## ⚙️ Configuration

1. Ouvrez **E2MultiPortal → CONFIG**.
2. **ADD** (vert) pour ajouter un serveur MAG (Host + adresse MAC) ou
   Xtream Codes (URL + utilisateur + mot de passe).
3. **TEST** (orange) pour vérifier la connexion avant d'enregistrer.
4. **OK** sur un serveur pour l'activer.
5. Bouton **bleu PLAYER** : choisir le moteur de lecture vidéo (GStreamer
   par défaut).

Vous pouvez aussi gérer vos serveurs via l'interface web :

```
http://<IP_DE_LA_BOX>:8070
```

---

## 🕹️ Raccourcis utiles

| Touche  | Live TV / VOD / Séries                         |
|---------|--------------------------------------------------|
| OK      | Sélectionner / Lire                               |
| VERT    | Lire                                              |
| BLEU    | Rechercher (VOD / Séries)                         |
| MENU    | Rafraîchir (recharge le cache du serveur)         |
| UP/DOWN (pendant la lecture) | Revenir à la liste (le flux continue) |
| EXIT    | Retour / Quitter (arrête la lecture)              |

---

## ⚠️ Avertissement

Ce plugin ne fournit **aucun contenu, identifiant ou abonnement**. Il s'agit
uniquement d'un client permettant de se connecter à des portails MAG/Stalker
ou Xtream Codes dont vous disposez déjà légalement.

---

## 👤 Auteur
**ELECTRO YASSINE**  
GitHub : [@electroyassine](https://github.com/electroyassine)
