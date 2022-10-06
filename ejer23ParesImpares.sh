#/!bin/bash
#23. Implemente un script que recorra un arreglo compuesto por números e imprima en pantalla
#sólo los números pares y que cuente sólo los números impares y los informe en pantalla al
#finalizar el recorrido.




#PROGRAMA PRINCIPAL

cantidad_impares=0
numeros=(2 6 9 45 7 8 97 0 4)

for num in ${numeros[@]} 
do
	((resultado=num%2))
	if [ $resultado -eq 0 ]
	then
	    echo "$num"
	else
	    ((cantidad_impares++))
	fi

done

echo "Hay $cantidad_impares numeros impares"
