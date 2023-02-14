#!/bin/bash

read -p "Introduce la ciudad: " ciudad

consumoInicial=0
consumoTotal=0
while read linea
do
  ciudadArchivo=$(echo $linea | awk '{print $1}')
  mes=$(echo $linea | awk '{print $2}')
  year=$(echo $linea | awk '{print $3}')
  consumo=$(echo $linea | awk '{print $4}')
  
  if [ $ciudadArchivo == $ciudad ]
  then
    consumoTotal=$((consumoTotal + consumo))
  fi
done < consumos.txt

if [ $consumoTotal -gt $consumoInicial ]
then
  echo "El consumo total de $ciudad es: $consumoTotal"
else
  echo "La ciudad introducida no es válida"
  exec ./atotal.sh
fi

