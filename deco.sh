#!/bin/bash

ciudad=$1
mediaConsumo=`./cmedia.sh $ciudad`

if [ $mediaConsumo -lt 400 ]
then 
    echo "ECO"
else
    echo "NO ECO"
fi