#!/bin/bash


function calcular_consumo {  
    ciudad=$1  
    consumo=$(($RANDOM % 5000))
    echo "El consumo de $ciudad es de $consumo kWh"
}

while true; do
    read -p "Introduce el nombre de la ciudad: " ciudad
    if [ "$ciudad" == "Madrid" ] || [ "$ciudad" == "Barcelona" ] || [ "$ciudad" == "Valencia" ]; then
        calcular_consumo $ciudad
        break
    else
        echo "La ciudad introducida no existe"
    fi
done
