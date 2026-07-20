<div align="center">
  
<img src="https://github.com/electroyassine/E2MultiPortal/blob/main/icon.png" width="80"/>
  
# E2MultiPortal

**Plugin IPTV pour Enigma2**

[![Version](https://img.shields.io/badge/version-3.1.2-6366f1?style=flat-square)](#)
[![Platform](https://img.shields.io/badge/platform-Enigma2-0284c7?style=flat-square)](#)

Compatible **OpenATV · OpenPLi · OpenBH · VTi · EGAMI**

</div>

---

## Présentation

E2MultiPortal est un plugin IPTV pour récepteurs Enigma2 permettant de gérer plusieurs serveurs **Xtream Codes** et **MAG/Stalker Portal** depuis une interface unifiée.

---

## Fonctionnalités

**Live TV** — navigation par catégories, guide EPG 7 jours, reconnexion automatique.

**Films (VOD)** — fiche avec poster et informations, reprise automatique, téléchargement vers disque dur.

**Séries** — navigation par saisons et épisodes avec reprise automatique.

**Recherche** — filtrage instantané par saisie numérique (touches 2 à 9).

**Favoris** — marquez vos contenus et retrouvez-les rapidement depuis chaque menu.

**Contrôle parental** — protection par code PIN des catégories sensibles.

**Interface web** — gérez vos serveurs depuis un navigateur sur `http://IP_RECEPTEUR:8080`. Test de connexion, tableau de bord, export et import de configuration.

**Mise à jour automatique** — notification à l'ouverture si une nouvelle version est disponible.

---

## Installation

### Automatique — SSH / Telnet

```sh
wget -q "--no-check-certificate" \
  https://raw.githubusercontent.com/electroyassine/E2MultiPortal/refs/heads/main/install.sh \
  -O - | /bin/sh
```

### Manuelle

1. Télécharger [`E2MultiPortal.tar.gz`](https://raw.githubusercontent.com/electroyassine/E2MultiPortal/refs/heads/main/E2MultiPortal.tar.gz)
2. Copier le fichier dans `/tmp/` sur le récepteur via FTP
3. Exécuter en SSH :

```sh
tar -xzf /tmp/E2MultiPortal.tar.gz \
  -C /usr/lib/enigma2/python/Plugins/Extensions/
killall -HUP enigma2
```

---

## Premiers pas

1. Menu Enigma2 → **Plugins** → **E2MultiPortal**
2. Aller dans **CONFIG** et ajouter un serveur avec vos identifiants
3. Sélectionner le serveur → **OK** pour l'activer

---

**Auteur : ELECTRO YASSINE** · [GitHub](https://github.com/electroyassine)
