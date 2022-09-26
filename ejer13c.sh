#!/bin/bash
#Crear un script que reciba como parámetro el nombre de un archivo e informe si el
#mismo existe o no, y en caso afirmativo indique si es un directorio o un archivo. En
#caso de que no exista el archivo/directorio cree un directorio con el nombre recibido
#como parámetro.

if [ -f $1 ]
then
    echo "$1 existe y es un archivo"
elif [ -d $1 ]
then
    echo "$1 existe y es un directorio"
else
    echo "$1 no existe"
    mkdir $1
fi
  
