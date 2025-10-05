#!/bin/bash

for i in "$1"/*; do
    [ -d "$i" ] && echo "$(basename "$i") → Directorio"
    [ -f "$i" ] && echo "$(basename "$i") → Fichero"
    [ -L "$i" ] && echo "$(basename "$i") → Enlace simbólico"
    [ -b "$i" ] && echo "$(basename "$i") → Archivo especial de bloque"
    [ -c "$i" ] && echo "$(basename "$i") → Archivo especial de carácter"
done

echo "Total de entradas: $(ls -1 "$1" | wc -l)"
