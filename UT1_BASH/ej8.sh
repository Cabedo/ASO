#!/bin/bash
read -p "Introduce el primer número: " num1
read -p "Introduce el segundo número: " num2
if [ $num1 -gt $num2 ]; then
    echo "El número mayor es: $num1"
elif [ $num1 -lt $num2 ]; then
    echo "El número mayor es: $num2"
else
    echo "Ambos números son iguales"
fi
