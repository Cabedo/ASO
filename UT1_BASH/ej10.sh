#!/bin/bash
read -p "Introduce un número: " num
if (( num % 2 == 0 )); then
    echo "El número $num es PAR."
else
    echo "El número $num es IMPAR."
fi
