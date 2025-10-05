#!/bin/bash
if [ -z "$1" ]; then
    echo "Uso: $0 <numero>"
    exit 1
fi

num=$1
es_primo=1 

if [ "$num" -le 1 ]; then
    es_primo=0
else
    for ((i=2; i<num; i++))
    do
        if (( num % i == 0 )); then
            es_primo=0
            break
        fi
    done
fi

if [ $es_primo -eq 1 ]; then
    echo "$num es primo."
else
    echo "$num NO es primo."
fi
