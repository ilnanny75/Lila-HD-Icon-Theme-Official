#!/bin/bash
#================================================
#   O.S.      : Gnu Linux                       =
#   Author    : Cristian Pozzessere   = ilnanny =
#   D.A.Page  : http://ilnanny.deviantart.com   =
#   Github    : https://github.com/ilnanny75    =
#================================================
# --- Colors ---
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${BLUE}--------------------------------------------------${NC}"
echo -e "${GREEN}   Lila HD Icon Theme - Installer (2026)          ${NC}"
echo -e "${BLUE}--------------------------------------------------${NC}"

# 1. Controllo se le cartelle Lila_HD esistono nella directory corrente
if ! ls Lila_HD* 1> /dev/null 2>&1; then
    echo -e "${RED}Error: No Lila_HD folders found in current directory!${NC}"
    exit 1
fi

echo "Installing Lila HD Icons..."
sudo mkdir -p /usr/share/icons

# 2. Copia dei file
sudo cp -r Lila_HD* /usr/share/icons/

# 3. Correzione permessi
sudo chmod -R 755 /usr/share/icons/Lila_HD*

# 4. Aggiornamento Cache per ogni variante installata
echo "Updating icon cache..."
for dir in /usr/share/icons/Lila_HD*; do
    if [ -d "$dir" ]; then
        sudo gtk-update-icon-cache -f -t "$dir"
    fi
done

echo -e "${GREEN}--------------------------------------------------${NC}"
echo "En: Done! Select the theme in your settings."
echo "It: Fatto! Seleziona il tema nelle impostazioni."
echo -e "${GREEN}--------------------------------------------------${NC}"

# 5. Riavvio opzionale di Thunar per applicare subito i cambiamenti
if pgrep thunar > /dev/null; then
    thunar -q && nohup thunar > /dev/null 2>&1 &
fi
