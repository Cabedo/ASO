#!/bin/bash
directorio=$1

fecha=$(date +%F)


salida="${fecha}_$(basename "$directorio").tar.gz"
tar -czf "$salida" "$directorio"

echo "Se ha creado el archivo: $salida"
