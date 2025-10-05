#!/bin/bash
if [ $# -lt 4 ]; then
    echo "Uso: $0 alta|baja nombre apellido1 apellido2 [grupo]"
    exit 1
fi

accion=$1
nombre=$2
ape1=$3
ape2=$4
grupo=$5

usuario="alu${ape1:0:2}${ape2:0:2}${nombre:0:1}"

if [ "$accion" = "alta" ]; then
    if [ -z "$grupo" ]; then
        grupo=$usuario
        groupadd "$grupo"
    fi
    useradd -m -g "$grupo" "$usuario"
    echo "Usuario $usuario creado en el grupo $grupo."

elif [ "$accion" = "baja" ]; then
    userdel -r "$usuario"
    echo "Usuario $usuario eliminado."

else
    echo "Opción no válida. Usa: alta o baja."
    exit 1
fi
