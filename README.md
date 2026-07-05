# E2MultiPortal

Plugin IPTV multi-portails pour **Enigma2** — Octagon SF8008, Dreambox et compatibles.
Gère simultanément plusieurs serveurs **MAG/Stalker Portal** et **Xtream Codes**.

**Version : v3.2.0** · Compatible **OpenATV · OpenPLi · OpenBH · VTi**

---

## Fonctionnalités

### 📺 Live TV
- Navigation catégories → chaînes avec info-logo et EPG en temps réel
- **Guide EPG 7 jours** (JAUNE) : émissions passées ✓, en cours ▶, à venir
- Barre de progression EPG, titre/description de l'émission suivante
- Reconnexion automatique MAG (watchdog 30 s)

### 🎬 VOD
- Poster, note ★/10, année, genres, synopsis
- **Lecture avec reprise automatique**
- **Téléchargement** (JAUNE) en arrière-plan avec progression
- Liste complète sans pagination · Recherche T9 (touches 2-9)

### 📺 Séries
- Navigation catégories → séries → saisons → épisodes
- Reprise automatique par épisode · Recherche T9

### ★ Favoris persistants
- Marquer (BLEU) depuis Live TV, VOD et Séries
- Fond adapté par type : `live.png` / `vod.png` / `serie.png`
- Saisons + épisodes stockés dans le favori Séries

### 🔒 Contrôle parental
- Code PIN SHA-256 · Catégories adultes auto-détectées

### ⚡ Performance
- **Cache-first** : affichage instantané depuis le cache, refresh réseau en fond
- Timeouts réseau 8 s · Affiches chargées en parallèle

### 🌐 Interface web (port 8080)
- Gestion serveurs depuis navigateur · Compression gzip · Multi-thread
- Port configurable (CONFIG → MENU)

### 🔄 Mise à jour automatique
- Vérification silencieuse au démarrage, sans popup d'erreur
- Redémarrage complet `init 4 → init 3` (tuners réinitialisés)

---

## Installation

```sh
# SSH / Telnet (auto)
wget -q "--no-check-certificate" \
  https://raw.githubusercontent.com/electroyassine/E2MultiPortal/refs/heads/main/install.sh \
  -O - | /bin/sh

# Manuelle
tar -xzf E2MultiPortal.tar.gz -C /usr/lib/enigma2/python/Plugins/Extensions/
find /usr/lib/enigma2/python/Plugins/Extensions/E2MultiPortal -name "*.pyc" -delete
killall -HUP enigma2

# opkg (OpenPLi / OpenBH)
opkg install E2MultiPortal.ipk --force-reinstall
```

---

## Raccourcis

| Touche | Live TV | VOD détail | CONFIG |
|--------|---------|------------|--------|
| OK | Lire | Lire | Activer |
| ROUGE | PIN | — | Supprimer |
| JAUNE | Guide EPG | Download | Modifier |
| BLEU | ★ Favori | ★ Favori | Lecteur |
| MENU | Mes favoris | — | Port web |

**Accès web :** `http://IP_BOX:8080`

---

**Auteur : ELECTRO YASSINE** · [@electroyassine](https://github.com/electroyassine)
