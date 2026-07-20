# E2MultiPortal

Plugin IPTV multi-portails pour **Enigma2** — Octagon SF8008, Dreambox et compatibles.
Gère simultanément plusieurs serveurs **MAG/Stalker Portal** et **Xtream Codes**.

**Version : v3.1.0** · Compatible **OpenATV · OpenPLi · OpenBH · VTi · EGAMI**

---

## Fonctionnalités

### Live TV
- Navigation catégories vers chaînes avec logo et EPG temps réel
- Guide EPG 7 jours : émissions passées, en cours, à venir
- Reconnexion automatique MAG (watchdog 30s)
- Recherche rapide par nom de chaîne (touches 2-9)

### VOD
- Fiche enrichie : poster, note sur 10, année, genre, synopsis
- Reprise automatique à la position précédente
- Téléchargement en arrière-plan avec progression
- Recherche T9 numérique (touches 2-9)

### Séries
- Navigation catégories vers séries vers saisons vers épisodes
- Reprise automatique par épisode · Recherche T9

### Favoris persistants
- Marquer depuis Live TV, VOD et Séries (touche BLEU)
- Accès rapide depuis chaque menu (touche MENU)
- Fond adapté par type : live.png / vod.png / serie.png

### Contrôle parental
- Code PIN chiffré SHA-256
- Catégories adultes détectées automatiquement

### Interface web (port 8080)
Style B — Light minimal avec thème dark/light

- Gestion serveurs Xtream et MAG depuis navigateur
- Tableau de bord : uptime, version, requêtes, expiration
- Test de connexion avec temps de réponse en ms
- Alerte expiration automatique si moins de 7 jours restants
- Export et Import servers.json
- Responsive mobile : menu hamburger, grille 2 colonnes
- Toggle thème clair / sombre

### Mise à jour automatique
- Vérification silencieuse 5 secondes après ouverture du menu
- Notification uniquement si version GitHub supérieure à la version locale
- Pas de popup si la version a déjà été déclinée
- Après mise à jour : version.json local mis à jour automatiquement
- Redémarrage : init 4 / sleep 3 / init 3 — tuners réinitialisés

### Performance
- Cache-first : catégories affichées depuis le cache, refresh réseau en fond
- Timeouts réseau 8s · Compression gzip sur le webserver
- Serveur web multi-thread (requêtes parallèles)

---

## Installation

```sh
# SSH / Telnet - installation directe
wget -q "--no-check-certificate" \
  https://raw.githubusercontent.com/electroyassine/E2MultiPortal/refs/heads/main/install.sh \
  -O - | /bin/sh

# Manuelle via tar.gz
tar -xzf E2MultiPortal_v3.1.0.tar.gz \
  -C /usr/lib/enigma2/python/Plugins/Extensions/
find /usr/lib/enigma2/python/Plugins/Extensions/E2MultiPortal -name "*.pyc" -delete
killall -HUP enigma2
```

---

## Raccourcis

| Touche | Live TV | VOD detail | CONFIG |
|--------|---------|------------|--------|
| OK | Lire | Lire | Activer |
| ROUGE | PIN parental | — | Supprimer |
| JAUNE | Guide EPG | Telecharger | Modifier |
| BLEU | Favori | Favori | Lecteur |
| MENU | Mes favoris | — | Port web |

Acces web : http://IP_BOX:8080

---

**Auteur : ELECTRO YASSINE** · https://github.com/electroyassine
