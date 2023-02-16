#!/bin/bash

# Definir la variable que se utilizará

ciudadParametro=$1
suma_total=0

while read -r linea; do
  ciudad=$(echo "$linea" | cut -d ' ' -f 1)
  mes=$(echo "$linea" | cut -d ' ' -f 2)
  anyo=$(echo "$linea" | cut -d ' ' -f 3)
  consumo=$(echo "$linea" | cut -d ' ' -f 4)

 if [ "$ciudadParametro" = "$ciudad" ]; then
        total=$(expr $total + $consumo)
       
  fi

done < consumos.txt

 echo "La suma total es: $total "