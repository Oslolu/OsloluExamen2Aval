#!/bin/bash

ciudades=`cat consumos.txt | tail -n+2 | awk '{print $1}' | sort | uniq > ciudades.txt`
cantLineas=`cat ciudades.txt | wc -l`

for i in `seq  $cantLineas`
do
    ciudad=`cat ciudades.txt | tail -n+$i | head -n1`
    echo "Media de consumo de $ciudad:"
    ./cmedia.sh $ciudad
done