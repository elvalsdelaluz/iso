#!/bin/bash
#16. Realizar un script que reciba como parámetro una extensión y haga un reporte con 2
#columnas, el nombre de usuario y la cantidad de archivos que posee con esa extensión. Se
#debe guardar el resultado en un archivo llamado reporte.txt


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
#PROGRAMA PRINCIPAL

#chequo que la cantidad de párametros que recibe el script sea 1
if  [ $# -eq 1 ]
then
    generar_informe $1
else
    echo "Debe ingresar una extensión"
fi
