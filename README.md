# E2MultiPortal

Plugin IPTV pour **Enigma2** — compatible OpenATV, OpenPLi, OpenBH, VTi.

**Version : v3.1.0**

---

## Fonctionnalités

- **Live TV** — navigation par catégories, guide EPG 7 jours, recherche par nom
- **VOD** — fiche film avec poster et infos, reprise automatique, téléchargement
- **Séries** — navigation saisons et épisodes, reprise automatique
- **Favoris** — marquer et retrouver rapidement ses contenus (BLEU / MENU)
- **Contrôle parental** — code PIN pour les catégories adultes
- **Interface web** — gestion des serveurs depuis un navigateur sur `http://IP:8080`
- **Mise à jour automatique** — notification à l'ouverture si nouvelle version disponible

---

## Installation

```sh
wget -q "--no-check-certificate" \
  https://raw.githubusercontent.com/electroyassine/E2MultiPortal/refs/heads/main/install.sh \
  -O - | /bin/sh
```

---

## Raccourcis

| Touche | Action |
|--------|--------|
| OK | Lire / Valider |
| BLEU | Ajouter aux favoris |
| MENU | Ouvrir les favoris |
| JAUNE | Guide EPG (Live) / Télécharger (VOD) |
| ROUGE | Contrôle parental |
| EXIT | Retour |

Accès interface web : `http://IP_BOX:8080`

---

**Auteur : ELECTRO YASSINE** · https://github.com/electroyassine
