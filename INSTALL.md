# E2MultiPortal — Installation / Mise à jour (Telnet)

Dépôt : https://github.com/electroyassine/E2MultiPortal

## Version actuelle : v1.1.17

Plugin IPTV multi-portails (MAG/Stalker + Xtream Codes) pour Enigma2
(OpenATV / sf8008 et compatibles).

---

## 📦 1. Préparer le téléchargement (côté GitHub)

Pour que le lien `wget` fonctionne, le fichier `E2MultiPortal.zip` doit être
publié sur GitHub. Deux méthodes possibles :

### Option A — Release GitHub (recommandé)

1. Sur la page du dépôt, aller dans **"Releases" → "Draft a new release"**.
2. Donner un tag, par exemple `v1.1.17`.
3. Glisser-déposer le fichier `E2MultiPortal.zip` comme asset.
4. Publier la release.

Lien de téléchargement direct (toujours la dernière version) :

```
https://github.com/electroyassine/E2MultiPortal/raw/refs/heads/main/E2MultiPortal.zip
```

Lien vers une version précise :

```
https://github.com/electroyassine/E2MultiPortal/raw/refs/heads/main/E2MultiPortal.zip
```

### Option B — Fichier dans le dépôt (branche `main`)

Si vous préférez commiter directement le zip dans le dépôt :

```
https://raw.githubusercontent.com/electroyassine/E2MultiPortal/main/E2MultiPortal.zip
```

---

## 📲 2. Installation par Telnet (utilisateur final)

1. Activer Telnet sur la box : **Menu → Réseau → Configuration des
   interfaces réseau → Telnet : activé** (ou via le panneau web de la box).
2. Se connecter en Telnet :

   ```
   telnet <IP_DE_LA_BOX>
   ```

3. Lancer la commande d'installation (une seule ligne) :

   ```sh
   wget -O /tmp/E2MultiPortal.zip "https://github.com/electroyassine/E2MultiPortal/raw/refs/heads/main/E2MultiPortal.zip" && rm -rf /usr/lib/enigma2/python/Plugins/Extensions/E2MultiPortal && unzip -o /tmp/E2MultiPortal.zip -d /usr/lib/enigma2/python/Plugins/Extensions/ && rm -f /tmp/E2MultiPortal.zip && init 4 && sleep 3 && init 3
   ```

4. L'interface redémarre automatiquement. Le plugin apparaît dans le menu
   principal **E2MultiPortal**.

### Variante : script d'installation

Le fichier `install.sh` fourni fait la même chose, avec affichage des
étapes :

```sh
wget -qO- https://raw.githubusercontent.com/electroyassine/E2MultiPortal/main/install.sh | sh
```

(Nécessite que `install.sh` soit présent à la racine du dépôt, branche
`main`.)

---

## 📝 Message d'annonce (à publier)

```
🆕 E2MultiPortal v1.1.17 disponible !

Nouveautés principales :
- VOD/Series : bouton de recherche dedie (touche BLEUE) sous "LIRE"
- Lecture continue : le flux reste actif en revenant a la liste
- CONFIG : choix du lecteur video (GStreamer / ExtEplayer3 / GstPlayer)
- Nouveau design du formulaire d'ajout/edition de serveur
- Date d'expiration affichee sur l'ecran principal
- VOD : suppression des boutons de pagination inutiles

Installation / mise a jour par Telnet :

wget -O /tmp/E2MultiPortal.zip "https://github.com/electroyassine/E2MultiPortal/raw/refs/heads/main/E2MultiPortal.zip" && rm -rf /usr/lib/enigma2/python/Plugins/Extensions/E2MultiPortal && unzip -o /tmp/E2MultiPortal.zip -d /usr/lib/enigma2/python/Plugins/Extensions/ && rm -f /tmp/E2MultiPortal.zip && init 4 && sleep 3 && init 3

Depot : https://github.com/electroyassine/E2MultiPortal
```

---

## ⚠️ Notes

- La commande supprime l'ancien dossier `E2MultiPortal` avant d'extraire la
  nouvelle version (la configuration des serveurs reste dans
  `/etc/enigma2/E2MultiPortal/servers.json`, donc elle est conservée).
- `init 4` puis `init 3` redémarre l'interface Enigma2 (l'enregistrement en
  cours, s'il y en a un, sera interrompu).
- Si `wget` ou `unzip` ne sont pas installés sur l'image, les installer via
  le gestionnaire de paquets (`opkg install wget unzip`).
