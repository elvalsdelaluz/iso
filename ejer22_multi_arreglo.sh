#!/bin/bash
#22. Dada la siguiente declaración al comienzo de un script: num=(10 3 5 7 9 3 5 4) (la cantidad
#de elementos del arreglo puede variar). Implemente la función productoria dentro de este
#script, cuya tarea sea multiplicar todos los números del arreglo


function productoria(){
    resultado=1
    for num in ${num[@]}
    do
       ((resultado=resultado*$num))
    done
    echo "$resultado"
}

num=(10 3 5 7 9 3 5 4)

productoria

