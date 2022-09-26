#!/bin/bash
#Realizar un script que solicite al usuario dos numeros, 
#los lea por la entrada estandar e imprima la multiplicacion, 
#suma, resta y el mayor numero leido


operaciones(){
    echo "MULTIPLICACION $1 * $2 = $(($1*$2))"
    echo "SUMA $1 + $2 = $(($1+$2))"
    echo "RESTA $1 - $2 = $(($1-$2))"

    if  [ $1 -gt $2 ]
    then
        echo "MAYOR $1"
    else
        echo "MAYOR $2"
    fi
}

if [ $# -gt 1 ] && [ $# -lt 3 ]
then
    operaciones $1 $2
else
  echo "Debe ingresar dos numeros"
fi
