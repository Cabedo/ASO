#!/bin/bash
existe() {
    if [ -f "$1" ]; then
        echo "El fichero '$1' existe."
        chmod u+x,go-x "$1"
        echo "✅ Permisos actualizados: ejecutable solo para el propietario."
    else
        echo "El fichero '$1' no existe."
    fi
}
if [ $# -ne 1 ]; then
    echo "Uso: $0 <nombre_fichero>"
    exit 1
fi

existe "$1"
