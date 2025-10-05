#!/bin/bash

read -p "Dime una palabra: " palabra
echo $palabra >> lista.txt
echo "La palabra '$palabra' se ha añadido a la lista.txt"
