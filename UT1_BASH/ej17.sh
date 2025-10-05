#!/bin/bash
suma=0

while true; do
    read -p "Introduce un número (0 para salir): " num
    if [ "$num" -eq 0 ]; then
        echo "La suma final es: $suma"
        break
    fi
    suma=$((suma + num))
    echo "Suma actual: $suma"
done
