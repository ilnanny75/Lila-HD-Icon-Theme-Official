#!/bin/bash
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

sudo mkdir -p /usr/share/icons
sudo cp -r Lila_HD* /usr/share/icons/

echo -e "${GREEN}--------------------------------------------------${NC}"
echo "En: Done! Select the theme in your settings."
echo "It: Fatto! Seleziona il tema nelle impostazioni."
echo "Es: ¡Hecho! Selecciona el tema en los ajustes."
echo -e "${GREEN}--------------------------------------------------${NC}"
