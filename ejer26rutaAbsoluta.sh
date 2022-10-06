#!/bin/bash
#26. Escriba un script que reciba una cantidad desconocida de parámetros al momento de su invo-
#cación (debe validar que al menos se reciba uno). Cada parámetro representa la ruta absoluta
#de un archivo o directorio en el sistema. El script deberá iterar por todos los parámetros reci-
#bidos, y solo para aquellos parámetros que se encuentren en posiciones impares (el primero, el tercero, el q
#verificar si el archivo o directorio existen en el sistema, imprimiendo en pantalla que tipo
#de objeto es (archivo o directorio). Además, deberá informar la cantidad de archivos o
#directorios inexistentes en el sistema.


#FUNCIONES

queEs(){
    if [ -d $1 ]
    then
        echo "$1 es un directorio"
    elif [ -f $1 ]
    then
        echo "$1 es un archivo"
    fi
}



#PROGRAMA PRINCIPAL

cant_arch_inexis=0

if [ $# -lt 1 ]
then
     echo "Debe ingresar un parametro como minimo"
else
    pos_parametro=1
    for parametro in $*
    do
        ((es_impar=pos_parametro%2))
        
        #Verifico que el parametro exista (-e)
        if [ -e $parametro ]
        then
            
            #Si existe y estoy en una posicion de parametro impar imprimo queEs
            if  [ $es_impar -eq 1 ]
            then
                queEs $parametro
            fi

        else
            ((cant_arch_inexis++))
        fi
        ((pos_parametro++))
    done
    
    echo "Hay $cant_arch_inexis archivos/directorios inexistentes"
fi


