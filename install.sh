#!/bin/sh
# ============================================================
#  E2MultiPortal - Installation / Mise a jour automatique
#  Depot : https://github.com/electroyassine/E2MultiPortal
#
#  Installation en une ligne (telnet) :
#
#    wget -q "--no-check-certificate" https://raw.githubusercontent.com/electroyassine/E2MultiPortal/refs/heads/main/install.sh -O - | /bin/sh
#
# ============================================================

TAR_URL="https://raw.githubusercontent.com/electroyassine/E2MultiPortal/refs/heads/main/E2MultiPortal.tar.gz"
DEST="/usr/lib/enigma2/python/Plugins/Extensions"
TMP="/tmp/E2MultiPortal.tar.gz"

echo "============================================="
echo " E2MultiPortal - Installation / Mise a jour"
echo "============================================="

echo "[1/5] Telechargement depuis GitHub..."
wget -q "--no-check-certificate" "$TAR_URL" -O "$TMP"
if [ ! -s "$TMP" ]; then
    echo "ERREUR: telechargement echoue."
    exit 1
fi

echo "[2/5] Suppression de l'ancienne version (si presente)..."
rm -rf "$DEST/E2MultiPortal"

echo "[3/5] Extraction vers $DEST ..."
tar -xzf "$TMP" -C "$DEST"

echo "[4/5] Nettoyage des fichiers temporaires..."
rm -f "$TMP"
find "$DEST/E2MultiPortal" -name "*.pyc" -delete 2>/dev/null
find "$DEST/E2MultiPortal" -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null

echo "[5/5] Redemarrage de l'interface Enigma2..."
init 4
sleep 3
init 3

echo "============================================="
echo " Installation terminee !"
echo " Menu principal -> E2MultiPortal"
echo "============================================="
