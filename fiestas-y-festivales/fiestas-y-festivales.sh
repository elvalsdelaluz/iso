#!/bin/bash



#Verifico que la cantidad de parametros recibidos sea 3
if [ $# -ne 3 ]
then
   echo "INVALID PARAMETERS" 
   exit 1
fi

#Verifico que el parametro 2 este en un rango válido
if [ $2 -lt 1 -o $2 -gt $(cat fiestas-y-festivales.csv | wc -l) ]
then 
   echo "INVALID PARAMETERS"	 
   exit 2
fi


#Imprimo la cantidad de festividades que hay en la provincia
echo "Hay $(cut -f5 -d"," fiestas-y-festivales.csv | grep -x $1 | wc -l) en la provincia de $1" 



#El nombre de la festividad para la fila indicada 
pos=1

while IFS= read -r line
do
    if [ $pos -ge $2 ]
    then
        echo "El valor para la columna nombre en la fila $2 de datos es $(echo $line | cut -f7 -d",")"
        break
    fi
    ((pos++))
done < fiestas-y-festivales.csv



#Busco el nro de columna en la que esta actividad_especifica
encabezado=$(grep "actividad_especifica" fiestas-y-festivales.csv)
pos_encabezado=1
for nombre_columna in $(echo $encabezado | tr "," " ")
do
    if [ $nombre_columna == actividad_especifica ]
    then
        break
    else
        ((pos_encabezado++))
    fi
done



#La cantidad de festividades de ese tipo
echo $(cut -f$pos_encabezado -d"," fiestas-y-festivales.csv | grep -i $3 | wc -l)



