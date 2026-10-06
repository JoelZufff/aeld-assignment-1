#!/bin/bash

# Validar que se pasaron exactamente 2 argumentos
if [ $# -ne 2 ]; then
    echo "Error: Faltan argumentos. Uso: $0 <archivo_destino> <texto>"
    exit 1
fi

writefile=$1
writestr=$2

# Extraer la ruta del directorio base (sin el nombre del archivo)
writedir=$(dirname "$writefile")

# Crear la ruta de directorios si no existe
mkdir -p "$writedir"

# Escribir el texto en el archivo (y sobreescribir si ya existe)
# Si el comando falla, imprime error y sale con 1
if ! echo "$writestr" > "$writefile"; then
    echo "Error: No se pudo crear el archivo $writefile"
    exit 1
fi
