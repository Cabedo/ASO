#!/bin/bash
numero_secreto=42
intento=-1

echo " Bienvenido al juego de adivinar el número (1 a 100)"
echo "Introduce 0 si quieres rendirte."

while [ "$intento" -ne "$numero_secreto" ] && [ "$intento" -ne 0 ]
do
    read -p " Adivina el número: " intento

    if [ "$intento" -eq 0 ]; then
        echo " Te has rendido. El número era $numero_secreto."
        break
    elif [ "$intento" -lt "$numero_secreto" ]; then
        echo "El número es mayor."
    elif [ "$intento" -gt "$numero_secreto" ]; then
        echo " El número es menor."
    else
        echo " ¡Enhorabuena! Has adivinado el número $numero_secreto."
    fi
done
