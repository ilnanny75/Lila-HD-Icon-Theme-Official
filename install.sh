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
NC='\033[0m'

echo -e "${BLUE}--------------------------------------------------${NC}"
echo -e "${GREEN}   Lila HD Icon Theme - Installer (2026)          ${NC}"
echo -e "${BLUE}--------------------------------------------------${NC}"

echo "En: Installing Lila HD Icons..."
echo "It: Installazione di Lila HD Icons..."
echo "Es: Instalando Lila HD Icons..."
echo "Nl: Bezig met installeren van Lila HD-pictogrammen…"

sudo mkdir -p /usr/share/icons
sudo cp -r Lila_HD* /usr/share/icons/

echo -e "${GREEN}--------------------------------------------------${NC}"
echo "En: Done! Select the theme in your settings."
echo "It: Fatto! Seleziona il tema nelle impostazioni."
echo "Es: ¡Hecho! Selecciona el tema en los ajustes."
echo "Nl: Klaar! Kies het thema in de instellingen."
echo -e "${GREEN}--------------------------------------------------${NC}"
