#!/bin/bash
read -p "Introduce el primer número: " num1
read -p "Introduce el segundo número: " num2
echo "-----------------------------"
echo "     MENÚ DE OPERACIONES     "
echo "-----------------------------"
echo "1. Sumar"
echo "2. Restar"
echo "3. Multiplicar"
echo "4. Dividir"
echo "-----------------------------"
read -p "Elige una opción (1-4): " opcion
case $opcion in
1)
        resultado=$((num1 + num2))
        echo "La suma es: $resultado"
        ;;
2)
        resultado=$((num1 - num2))
        echo "La resta es: $resultado"
        ;;
3)
        resultado=$((num1 * num2))
        echo "La multiplicación es: $resultado"
        ;;
4)
        
        if [ $num2 -eq 0 ]; then
            echo "Error: No se puede dividir entre 0."
        else
            resultado=$((num1 / num2))
            echo "La división es: $resultado"
        fi
        ;;
    *)
        echo "Opción no válida"
        ;;
esac
