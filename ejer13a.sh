#!/bin/bash
#Realiza un script que visualice por pantalla los numeros del 1 al 100
#asi como sus cuadrados

echo "NUM     CUADRADO"
for ((num=1; num<101; num++))
do
    echo "$num       $(($num*$num))"
done
