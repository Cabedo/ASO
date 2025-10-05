#!/bin/bash
echo "===================================="
echo "   SUMA DE NÚMEROS DEL 1 AL 1000"
echo "===================================="
echo "1. Usar bucle FOR"
echo "2. Usar bucle WHILE"
echo "3. Usar bucle UNTIL"
read -p "Elige una opción (1-3): " opcion

suma=0
i=1

case $opcion in
  1)
    for ((i=1; i<=1000; i++)); do
      suma=$((suma + i))
    done
    echo "Resultado con FOR: $suma"
    ;;
  2)
    while [ $i -le 1000 ]; do
      suma=$((suma + i))
      i=$((i + 1))
    done
    echo "Resultado con WHILE: $suma"
    ;;
  3)
    until [ $i -gt 1000 ]; do
      suma=$((suma + i))
      i=$((i + 1))
    done
    echo "Resultado con UNTIL: $suma"
    ;;
  *)
    echo " Opción no válida."
    ;;
esac
