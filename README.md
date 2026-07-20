<div align="center">

<img src="https://raw.githubusercontent.com/electroyassine/E2MultiPortal/refs/heads/main/E2MultiPortal/skins/iconX4.png" width="80"/>

# E2MultiPortal

**Plugin IPTV avancé pour Enigma2**

[![Version](https://img.shields.io/badge/version-3.1.0-6366f1?style=flat-square)](https://github.com/electroyassine/E2MultiPortal/releases)
[![License](https://img.shields.io/badge/license-Private-red?style=flat-square)](#)
[![Platform](https://img.shields.io/badge/platform-Enigma2-0284c7?style=flat-square)](#)

Compatible **OpenATV · OpenPLi · OpenBH · VTi · EGAMI**

</div>

---

## Présentation

E2MultiPortal est un plugin IPTV complet pour récepteurs Enigma2 permettant de gérer et utiliser plusieurs serveurs IPTV simultanément — **Xtream Codes** et **MAG/Stalker Portal** — depuis une interface unifiée.

---

## Fonctionnalités

### Télévision en direct
Naviguez dans vos bouquets de chaînes avec affichage du logo, des informations du programme en cours et du guide EPG sur 7 jours. La reconnexion est automatique en cas de coupure.

### Films (VOD)
Accédez à votre catalogue de films avec poster, note, année de sortie et synopsis. Le plugin mémorise votre position pour reprendre là où vous vous êtes arrêté. Le téléchargement vers un disque dur est disponible directement depuis la fiche film.

### Séries
Navigation complète par saisons et épisodes avec reprise automatique. L'historique de visionnage est conservé entre les sessions.

### Recherche
Filtrage instantané par saisie numérique T9 (touches 2 à 9 de la télécommande) dans les listes de chaînes, films et séries.

### Favoris
Marquez vos contenus préférés en un clic depuis n'importe quel écran. Accédez à votre liste de favoris directement depuis les menus Live TV, VOD et Séries.

### Contrôle parental
Protection par code PIN des catégories sensibles. Déverrouillage par session, sans ressaisie répétée.

### Interface web de configuration
Gérez vos serveurs depuis n'importe quel navigateur sur votre réseau local. Ajoutez, testez, modifiez et supprimez vos serveurs Xtream et MAG. Le tableau de bord affiche l'état du plugin, l'uptime et la date d'expiration de votre abonnement actif.

Accès : **`http://IP_RECEPTEUR:8080`**

### Mise à jour automatique
Le plugin vérifie silencieusement si une nouvelle version est disponible à chaque démarrage et vous propose de l'installer en un clic.

---

## Installation

### Méthode automatique — SSH / Telnet

```sh
wget -q "--no-check-certificate" \
  https://raw.githubusercontent.com/electroyassine/E2MultiPortal/refs/heads/main/install.sh \
  -O - | /bin/sh
```

### Méthode manuelle — via FTP ou gestionnaire de fichiers

1. Télécharger `E2MultiPortal.tar.gz` depuis la [page des releases](https://github.com/electroyassine/E2MultiPortal/releases)
2. Copier le fichier dans `/tmp/` sur le récepteur
3. Ouvrir un terminal SSH et exécuter :

```sh
tar -xzf /tmp/E2MultiPortal.tar.gz \
  -C /usr/lib/enigma2/python/Plugins/Extensions/
killall -HUP enigma2
```

### Méthode opkg — OpenPLi / OpenBH

```sh
opkg install E2MultiPortal.ipk --force-reinstall
```

---

## Premiers pas

1. Ouvrir le menu Enigma2 → **Plugins** → **E2MultiPortal**
2. Appuyer sur le bouton coloré **CONFIG** ou naviguer vers l'onglet Configuration
3. Ajouter un serveur Xtream ou MAG avec vos identifiants
4. Sélectionner le serveur et appuyer sur **OK** pour l'activer
5. Profiter de vos contenus

---

## Auteur

**ELECTRO YASSINE**
GitHub : [electroyassine](https://github.com/electroyassine)
