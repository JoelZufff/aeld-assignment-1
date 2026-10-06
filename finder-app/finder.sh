#!/bin/bash

# Validar que se pasaron exactamente 2 argumentos
if [ $# -ne 2 ]; then	 		
    echo "Error: Faltan parametros. Uso: $0 <directorio> <cadena_busqueda>"
    exit 1
fi

# Definicion de variables
filesdir=$1
searchstr=$2

# Validar que el primer argumento sea un directorio valido
if [ ! -d "$filesdir" ]; then
    echo "Error: '$filesdir' no es un directorio valido en el sistema de archivos."
    exit 1
fi

# Contar archivos y lineas coincidentes
X=$(find "$filesdir" -type f | wc -l)
Y=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

# Imprimir el resultado exacto que pide el curso
echo "The number of files are $X and the number of matching lines are $Y"
