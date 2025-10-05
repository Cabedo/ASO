#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Uso: $0 número"
    exit 1
fi

n=$1

echo "Tabla de multiplicar del $n:"
for i in {1..10}; do
    echo "$i x $n = $((i * n))"
done
