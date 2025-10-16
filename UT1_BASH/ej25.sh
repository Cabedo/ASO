#!/bin/bash
echo "Usuarios con inicio de sesión remoto (con IP):"
last | egrep -o "^[a-zA-Z0-9_-]+ +[^ ]+ +[^ ]+ +[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+"
