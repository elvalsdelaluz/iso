#!/bin/bash

acumular(){
    #Si le quito las "" a *$1 no cuenta bien... 
    echo "$3 $(find $2 -type f -name "*$1" 2>/dev/null | wc -l)" >> reporte.txt
}


generar_informe(){
    touch reporte.txt
    for usuario_home in $(cut -d: -f1,6 /etc/passwd)
    do
        home=$(echo "$usuario_home" | cut -d: -f2) 

        if [ -d $home ]
        then
            usuario=$(echo "$usuario_home" | cut -d: -f1)
            acumular $1 $home $usuario
        fi 

    done
}


if  [ $# -eq 1 ]
then
    generar_informe $1
else
    echo "Debe ingresar una extensión"
fi
