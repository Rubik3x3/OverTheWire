#!/bin/bash
#Moverse al directorio donde está el script
cd "$(dirname "$0")"

game="$1" #Nombre del juego (ej: bandit)
level="$2" #Nivel del juego (ej: 15)
host="${game}.labs.overthewire.org"

# Verificar que se ingresaron los 2 parámetros
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Error: Se debe ingresar los dos parámetros: el juego y el nivel. "
    echo "Uso: otw <juego> <nivel>"
    exit 1
fi

if [ "$game" = "bandit" ]; then
	pass=$(cat ${game}/${game} | grep -w ${game}${level} | cut -d ':' -f2)
	if [ -z "$pass" ]
	then
		echo "No hay contraseña para el juego ${game}${level}."
	else
		sshpass -p $pass ssh -p 2220 "${game}${level}@${host}"
	fi
fi

