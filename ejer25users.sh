#!/bin/bash
#25. Realice un script que agregue en un arreglo todos los nombres de los usuarios del sistema
#pertenecientes al grupo “users”. Adicionalmente el script puede recibir como parametro:
#“-b n”: Retorna el elemento de la posición n del arreglo si el mismo existe. Caso
#contrario, un mensaje de error.
#“-l”: Devuelve la longitud del arreglo
#“-i”: Imprime todos los elementos del arreglo en pantalla

#PROGRAMA PRINCIPAL

usuarios=()
longitud=-1

#Agrego los usuarios al arreglo
for usuario in $(cut -d: -f1 /etc/passwd)
do
    ((longitud++))
    usuarios[longitud]=$usuario
done
echo "$longitud"

#Otra forma de agregar los usuarios al arreglo, pero longitud_dos vale 1......
usuarios_dos=$(cut -d: -f1 /etc/passwd)
longitud_dos=${#usuarios_dos[*]}
echo "$longitud_dos"


