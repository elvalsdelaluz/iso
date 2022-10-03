#!/bin/bash
#20. Realice un script que simule el comportamiento de una estructura de PILA e implemente
#las siguientes funciones aplicables sobre una estructura global definida en el script:
#push: Recibe un parámetro y lo agrega en la pila
#length: Devuelve la longitud de la pila
#pop: Saca un elemento de la pila
#print: Imprime todos elementos de la pila


#PROGRAMA PRINCIPAL

#creo la pila
pila=()
puntero=-1

PS3="Usted esta en la pila, ingrese la operacion que desea realizar: "

select operacion in push pop length print exit
do
    case $operacion in
        "push")

        echo "Ingrese el dato que desea guardar: "
        read valor
        ((puntero++))
        pila[$puntero]=$valor

    ;;
    "pop")
        if [ $puntero -ge 0 ]
        then
            echo "${pila[$puntero]}"
            ((puntero--))
        fi
    ;;
    "length")
        #echo "${#pila}"
        echo "$(($puntero + 1))"

    ;;
    "print")
        #echo "${pila[@]}"
        for ((pos=0; pos <= $puntero; pos++))
        do
            echo "${pila[$pos]}"
        done
    ;;
    "exit")
        unset pila
        break
    ;;
    *)
        echo "Operación inválida"
    ;;
    esac
done
