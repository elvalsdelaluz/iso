#!/bin/bash
#17. Escribir un script que al ejecutarse imprima en pantalla los nombre de los archivos que se
#encuentran en el directorio actual, intercambiando minúsculas por mayúsculas, además de
#eliminar la letra a (mayúscula o minúscula).



#PROGRAMA PRINCIPAL

#ls me retorna una lista de nombres de archivos del
#directorio donde estoy parada, itero sobre esa lista

for nombre_archivo in $(ls)
do
    #a cada nombre de archivo primero le cambio las vocales 
    #de minuscula a mayuscula y al resultado de esa operación
    #le quito las 'a' o 'A'

    echo "$nombre_archivo"
    echo "$(echo "$nombre_archivo" | tr 'eiou' 'EIOU' | tr -d 'aA')"
    echo " "
done
