#!/bin/bash
#================================================
#   O.S.      : Gnu Linux                       =
#   Author    : Cristian Pozzessere   = ilnanny =
#   D.A.Page  : http://ilnanny.deviantart.com   =
#   Github    : https://github.com/ilnanny75    =
#================================================

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}=================================================================${NC}"
echo -e "${GREEN}          Generating Icon Cache for Lila HD Themes               ${NC}"
echo -e "${BLUE}=================================================================${NC}"

# Cerca tutte le cartelle che iniziano con Lila_HD in /usr/share/icons
for dir in /usr/share/icons/Lila_HD*; do
    if [ -d "$dir" ]; then
        folder_name=$(basename "$dir")
        echo -e "\n${BLUE}Processing: ${GREEN}$folder_name${NC}"
        echo "-----------------------------------------------------------------"
        
        # -f: force, -t: controlla l'esistenza di index.theme
        sudo gtk-update-icon-cache -f -t "$dir"
    fi
done

echo ""
echo -e "${BLUE}=================================================================${NC}"
echo -e "${GREEN}   Cache update complete! Please close your Terminal.          ${NC}"
echo -e "${BLUE}=================================================================${NC}"
exit 0