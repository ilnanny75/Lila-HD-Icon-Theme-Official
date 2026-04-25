#!/bin/bash

# Percorso della cartella principale
BASE_DIR="/media/ilnanny/dati-linux/Lila-HD-Icon-Theme-Official"

echo "Inizio correzione index.theme..."

# Trova tutti i file index.theme
find "$BASE_DIR" -name "index.theme" | while read -r file; do
    
    # Prendi il nome della cartella che contiene il file
    folder_name=$(basename "$(dirname "$file")")
    
    if [ "$folder_name" == "Lila_HD" ]; then
        # CASO 1: Tema Madre
        echo "Configurazione Tema Madre: $folder_name"
        sed -i 's/^Inherits=.*/Inherits=Adwaita,hicolor/' "$file"
    else
        # CASO 2: Varianti Colore (Blue, Crimson, ecc.)
        echo "Configurazione Variante: $folder_name"
        # Qui diciamo alla variante di guardare prima in Lila_HD, poi Adwaita
        sed -i 's/^Inherits=.*/Inherits=Lila_HD,Adwaita,hicolor/' "$file"
    fi
done

echo "Fatto! Ora la gerarchia è corretta."
