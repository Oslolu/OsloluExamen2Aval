#!/bin/bash

read -p "Introduzca el nombre de la ciudad: " ciudad

min=$(grep "$ciudad" "consumos.txt" | awk '{print $4}' | sort -n | head -n 1)
max=$(grep "$ciudad" "consumos.txt" | awk '{print $4}' | sort -rn | head -n 1)

lineaMin=$(grep $ciudad consumos.txt | grep $min)
mesMin=$(echo $lineaMin | awk '{print $2}')
yearMin=$(echo $lineaMin | awk '{print $3}')

echo "El consumo mínimo de la ciudad $ciudad fue de $min en $mesMin de $yearMin"

lineaMax=$(grep $ciudad consumos.txt | grep $max)
mesMax=$(echo $lineaMax | awk '{print $2}')
yearMax=$(echo $lineaMax | awk '{print $3}')

echo "El consumo máximo de la ciudad $ciudad fue de $max en $mesMax de $yearMax"
