#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Uso: $0 <origen> <destino>"
    exit 1
fi
origen=$1
destino=$2
if [ ! -e "$origen" ]; then
    echo "Error: el fichero de origen '$origen' no existe."
    exit 2
fi

if [ ! -f "$origen" ]; then
    echo "Error: '$origen' no es un archivo ordinario."
    exit 3
fi
if [ -e "$destino" ]; then
    echo "Error: ya existe algo llamado '$destino' (archivo/directorio/enlace)."
    exit 4
fi
cp -- "$origen" "$destino" || { echo "Error: no se pudo copiar."; exit 5; }

echo "Copiado correctamente: '$origen' -> '$destino'"
