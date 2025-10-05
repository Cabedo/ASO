#!/bin/bash
F="lista.txt"
touch "$F"

while true; do
  echo -e "\n--- AGENDA ---"
  echo "1) Añadir  2) Buscar  3) Listar  4) Ordenar  5) Borrar  0) Salir"
  read -p "Opción: " op

  case $op in
    1)  read -p "Nombre: " n; read -p "Dirección: " d; read -p "Teléfono: " t
        echo "$n | $d | $t" >> "$F"
        echo "✔ Añadido." ;;
    2)  read -p "Texto a buscar: " b
        grep -i "$b" "$F" || echo "No encontrado." ;;
    3)  echo -e "\n--- LISTA ---"; cat "$F" ;;
    4)  sort "$F" -o "$F"; echo "✔ Ordenado alfabéticamente." ;;
    5)  read -p "¿Borrar todo? (s/n): " r; [[ $r == s ]] && > "$F" && echo "✔ Borrado." ;;
    0)  echo "Adiós!"; break ;;
    *)  echo "Opción no válida." ;;
  esac
done
