#!/bin/bash
echo "Buscando archivos peligrosos (permisos - - - rwx)..."
find / -type f -perm -o=w 2>/dev/null > archivos_peligrosos.txt

echo "Se ha generado el archivo 'archivos_peligrosos.txt' con los resultados."
