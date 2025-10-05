#!/bin/bash
dir=$1

if [ ! -d "$dir" ]; then
  echo "Uso: $0 <directorio existente>"
  exit 1
fi

ficheros=$(ls -l "$dir" | grep "^-" | wc -l)
directorios=$(ls -l "$dir" | grep "^d" | wc -l)

echo "Ficheros: $ficheros"
echo "Directorios: $directorios"
