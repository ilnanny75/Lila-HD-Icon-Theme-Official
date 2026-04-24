#!/bin/bash
#================================================
#   O.S.      : Gnu Linux                       =
#   Author    : Cristian Pozzessere   = ilnanny =
#================================================

APP_DIR="/usr/share/applications"
let x=0

echo -e "Analisi icone in: $APP_DIR\n"

# Usiamo un ciclo while per gestire correttamente i nomi con spazi
find "$APP_DIR" -name "*.desktop" | while read -r file; do
    let x=$x+1
    
    # Estraiamo solo la prima occorrenza (m) di Name, Comment e Icon 
    # evitando le traduzioni tipo Name[it]
    name=$(grep -m 1 '^Name=' "$file" | cut -d'=' -f2)
    comment=$(grep -m 1 '^Comment=' "$file" | cut -d'=' -f2)
    icon=$(grep -m 1 '^Icon=' "$file" | cut -d'=' -f2)
    
    echo "[$x] =========================================================="
    echo "FILE   : $(basename "$file")"
    echo "NOME   : $name"
    echo "ICONA  : $icon"
    [ -n "$comment" ] && echo "DESC   : $comment"
done