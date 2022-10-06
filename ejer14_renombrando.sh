#!/bin/bash
#14. Renombrando Archivos: haga un script que renombre solo archivos de un 
#directorio pasado 
#como parametro agregandole una CADENA, contemplando las opciones:
#“-a CADENA”: renombra el fichero concatenando CADENA al final del nombre del
#archivo
#“-b CADENA”: renombra el fichero concantenado CADENA al principio del nombre
#del archivo


#EL SCRIPT SOLO FUNCIONA CON RUTAS ABSOLUTAS, NDAD DE RELATIVAS
#NO SE MODIFICAN NOMBRES DE DIRECTORIOS
#AL PASARLE COMO PARAMETRO EL DIRECTORIO LO TENGO QUE HACER PONIENDOLE LA / AL FINAL	
#FUNCIONA SI LE PASO /etc/ no funciona si le paso /etc




renombrarArchivosInicio(){
    for nombreArchivo in `ls $1` 
    do 
        #echo "$nombreArchivo$3"
	echo "$nombreArchivo $1$nombreArchivo$3"
        mv $1$nombreArchivo $1$nombreArchivo$3
    done
}

renombrarArchivosFinal(){
    for nombreArchivo in `ls $1` 
    do
         echo "$nombreArchivo"
    done
}


#Chequeo que el primer parametro sea un directorio
echo "$1 $2 $3"

if [ -d $1 ] && [ $# -eq 3 ]
then
    echo "Entreee"
    if [ $2 = "-a" ] 
    then
        renombrarArchivosInicio $1 $2 $3
    elif [ $2 = "-b" ]
    then
        renombrarArchivosFinal $1 $2 $3
    fi
fi

