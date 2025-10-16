#!/bin/bash
FICHERO="agenda.csv"
touch "$FICHERO"

añadir_contacto() {
    read -p "Nombre: " nombre
    read -p "Teléfono (9 dígitos): " telefono
    read -p "Email: " email

    if [[ ! "$telefono" =~ ^[0-9]{9}$ ]]; then
        echo "Teléfono no válido"; return
    fi
    if [[ ! "$email" =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$ ]]; then
        echo "Email no válido"; return
    fi

    echo "$nombre;$telefono;$email" >> "$FICHERO"
    echo " Contacto añadido"
}

listar_contactos() {
    echo "---- AGENDA ----"
    cat "$FICHERO"
    echo "----------------"
}

buscar_contacto() {
    read -p "Buscar por nombre/teléfono/email: " texto
    grep -i "$texto" "$FICHERO"
}

borrar_contacto() {
    read -p "Nombre a borrar: " nombre
    grep -iv "$nombre" "$FICHERO" > temp && mv temp "$FICHERO"
    echo "Contacto borrado (si existía)"
}

editar_contacto() {
    read -p "Nombre del contacto a editar: " nombre
    linea=$(grep -in "$nombre" "$FICHERO" | head -1 | cut -d: -f1)
    if [ -z "$linea" ]; then
        echo "No encontrado."; return
    fi
    read -p "Nuevo nombre: " nuevo_nombre
    read -p "Nuevo teléfono: " nuevo_tel
    read -p "Nuevo email: " nuevo_email
    sed -i "${linea}s/.*/$nuevo_nombre;$nuevo_tel;$nuevo_email/" "$FICHERO"
    echo "Contacto editado"
}

menu() {
    echo "1) Añadir contacto"
    echo "2) Listar contactos"
    echo "3) Buscar contacto"
    echo "4) Borrar contacto"
    echo "5) Editar contacto"
    echo "0) Salir"
}

while true; do
    menu
    read -p "Opción: " op
    case $op in
        1) añadir_contacto ;;
        2) listar_contactos ;;
        3) buscar_contacto ;;
        4) borrar_contacto ;;
        5) editar_contacto ;;
        0) echo "Saliendo..."; break ;;
        *) echo "Opción no válida" ;;
    esac
    echo
done
