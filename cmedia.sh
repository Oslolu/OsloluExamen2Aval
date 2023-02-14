#!/bin/bash

if [ -z "$1" ]; then
    echo "Hay que pasar una ciudad como parametro"
    exit 1
fi

ciudad=$1
awk -v ciudad="$ciudad" '$1 == ciudad {sum+=$4; count++} END {if (count > 0) print "La media de consumo de " ciudad es":", sum/count; else print "No hay consumos para la ciudad " ciudad}' consumos.txt
