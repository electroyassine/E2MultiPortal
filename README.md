# E2MultiPortal

Plugin IPTV multi-portails pour **Enigma2** (OpenATV / sf8008 et compatibles) :
gestion de plusieurs serveurs **MAG/Stalker Portal** et **Xtream Codes**, avec
Live TV, VOD, Séries, interface web embarquée, guide EPG 7 jours, contrôle
parental PIN et téléchargement de films.

---

## ✨ Fonctionnalités

### Serveurs & navigation
- **Multi-serveurs** : ajoutez et basculez entre plusieurs portails MAG/Stalker
  et comptes Xtream Codes depuis l'écran **CONFIG**.
- **Interface web embarquée** (port 8070) : gérez vos serveurs depuis n'importe
  quel navigateur sur le même réseau.
- **Choix du lecteur vidéo** : GStreamer / ExtEplayer3 , modifiable
  depuis CONFIG.
- **Date d'expiration** du compte actif affichée sur l'écran principal.

### Live TV
- Liste des catégories avec sous-liste des chaînes.
- **Guide EPG 7 jours** (touche BLEU) : navigation ↑↓ entre émissions,
  ←→ entre jours. Émission en cours marquée ▶, émissions passées marquées ✓.
- Reconnexion automatique MAG (watchdog 30 s) avec spinner de connexion.
- **Contrôle parental PIN** (touche ROUGE) : protection des catégories adultes
  par code PIN SHA-256, session déverrouillée après une seule saisie correcte.

### VOD
- Colonnes catégories → liste de films → fiche détail.
- **Fiche film enrichie** : affiche, note ★/10, année, genres, durée,
  réalisateur, acteurs, synopsis (données Xtream + TMDB en complément).
- **Lecture (OK/VERT)** avec reprise automatique : dialogue de reprise si une
  position a été sauvegardée, reprise silencieuse en mode automatique.
- **Téléchargement (JAUNE)** en arrière-plan via `wget`, avec barre de
  progression. Destination automatique : HDD → USB → /tmp.
- **Recherche T9** numérique (touches 2-9) : filtre instantané en mémoire.
- Contrôle parental PIN (touche ROUGE) sur les listes.

### Séries
- Navigation catégories → séries → saisons → épisodes.
- Même fiche enrichie, même reprise automatique que VOD.
- Recherche T9 numérique.

### Qualité & performance
- **Cache local** : catégories, listes et affiches mises en cache pour des
  rechargements instantanés.
- **Nettoyage automatique** du cache de reprise (LRU 200 entrées, expiration
  90 jours).
- Code réorganisé en sous-packages (`screens/`, `managers/`, `api/`) pour
  une maintenance facilitée.

---

## 📲 Installation / Mise à jour (Telnet)

Connectez-vous en Telnet ou SSH sur votre box, puis lancez :

```sh
wget -q "--no-check-certificate" \
  https://raw.githubusercontent.com/electroyassine/E2MultiPortal/refs/heads/main/install.sh \
  -O - | /bin/sh
```

Cette commande :
1. télécharge la dernière version (`E2MultiPortal.tar.gz`) ;
2. supprime l'ancienne installation **et ses fichiers `.pyc` en cache** ;
3. extrait dans `/usr/lib/enigma2/python/Plugins/Extensions/` ;
4. redémarre Enigma2.

> ✅ La configuration (`/etc/enigma2/E2MultiPortal/servers.json`) et les données
> de reprise ne sont **pas supprimées** lors d'une mise à jour.

### Installation manuelle

1. Téléchargez
   [`E2MultiPortal.tar.gz`](https://github.com/electroyassine/E2MultiPortal/raw/refs/heads/main/E2MultiPortal.tar.gz).
2. Copiez l'archive sur la box (USB ou `scp`).
3. Extrayez :
   ```sh
   rm -rf /usr/lib/enigma2/python/Plugins/Extensions/E2MultiPortal
   tar -xzf E2MultiPortal.tar.gz -C /usr/lib/enigma2/python/Plugins/Extensions/
   find /usr/lib/enigma2/python/Plugins/Extensions/E2MultiPortal -name "*.pyc" -delete
   killall -HUP enigma2
   ```

---

## ⚙️ Configuration des serveurs

1. Ouvrez **E2MultiPortal → CONFIG**.
2. **ADD** (vert) pour ajouter un serveur :
   - **MAG / Stalker** : Host + adresse MAC.
   - **Xtream Codes** : URL + utilisateur + mot de passe.
3. **TEST** (orange) pour vérifier la connexion.
4. **OK** sur un serveur pour l'activer.
5. **PLAYER** (bleu) pour choisir le moteur de lecture vidéo.

Accès web (même réseau local) :

```
http://<IP_DE_LA_BOX>:8070
```

---

## 🔐 Contrôle parental

1. Appuyez sur **ROUGE** dans Live TV ou la liste VOD.
2. Si aucun PIN n'est encore défini, saisissez un code à 4 chiffres.
3. Les catégories contenant les mots-clés `adult`, `xxx`, `18+`, `erotic`,
   `porno`, `x-rated`, `+18`, `foradult` sont verrouillées automatiquement.
4. Pour **modifier ou désactiver** le PIN : ROUGE → choisir dans le menu.

> Le code PIN par défaut après installation via script est **1234**.
> Changez-le immédiatement depuis l'écran CONFIG → ROUGE.

---

## 🌐 Interface web (port 8070)

Accessible depuis n'importe quel navigateur sur votre réseau local :

- **Tableau de bord** : serveurs actifs, uptime, statistiques.
- **Ajouter / éditer / supprimer** un serveur MAG ou Xtream.
- **Tester** la connexion avant d'enregistrer.
- **API JSON** : `GET http://<IP>:8070/api/status` pour intégration externe.

---

## ⚠️ Avertissement

Ce plugin ne fournit **aucun contenu, identifiant ou abonnement IPTV**.
Il s'agit uniquement d'un client permettant de se connecter à des portails
MAG/Stalker ou Xtream Codes dont vous disposez déjà légalement.

---

## 👤 Auteur

**ELECTRO YASSINE**
GitHub : [@electroyassine](https://github.com/electroyassine)
