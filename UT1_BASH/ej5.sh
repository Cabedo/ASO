#!/bin/bash
read -p "Dime un numero : " num1
read -p "DIme otro numero : " num2
arit=$(( (num1 + num2) / 2 ))
echo "La media aritmetica de los dos numeros es: $arit"
