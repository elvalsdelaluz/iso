#!/bin/bash
#

PS3="Ingrese el numero de operacion que desea realizar: "

select character in Listar DondeEstoy QuienEsta
do
    case $character in
        "Listar")
            echo "`ls`"
        ;;
        "DondeEstoy")
             echo "`pwd`"
        ;;
        "QuienEsta")
            echo "`users`"
        ;;
        *)
            echo "Operacion invalida"
        ;;
    esac

    break
done
