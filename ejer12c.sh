#!/bin/bash
#Realizar una calculadora que ejecute las cuatro operaciones basicas.


operar(){
    echo "$2"
    echo "$1 $2 $3 = $(($1 $2 $3))"
}

echo "$@"
echo "$*"
echo "$2"
echo "$1 $2 $3"


if [ $# -eq 3 ]
then
   operar $1 $2 $3
else
    echo "No se puede realizar la operacion"
fi
