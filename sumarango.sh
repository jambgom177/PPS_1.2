#!/bin/bash

#Recoge dos valores por pantalla
echo "Introduce un número"
read numero1
echo "Introduce otro número"
read numero2

#Corrobora si esos dos datos son realmente números
if [ "$numero1" -eq "$numero1" ] 2> /dev/null 
then
    if [ "$numero2" -eq "$numero2" ] 2> /dev/null 
    then
        #Comprueba si un número es mayor que otro para realizar la suma total del rango
        if [ "$numero1" -lt "$numero2" ]
        then
            suma="$numero1"
            for((i=$numero1; i<$numero2;i++))
            do
                ((suma+=i+1))
            done
            echo "La suma total es $suma"
        elif [ "$numero2" -lt "$numero1" ] # En caso de que el primer número no sea mayor, corrobora que el segundo lo sea y realiza el bucle a la inversa
        then
            suma="$numero2"
            for((i=$numero2; i<$numero1;i++))
            do
                ((suma+=i+1))
            done
            echo "La suma total es $suma"
        else #Al final si ninguno de los dos son mayores que el otro significa que son iguales por lo tanto pasará por aqui
            echo "Los números introducidos son iguales por tanto la suma es $numero1"
        fi
    else
        echo echo "El segundo valor introducido no es un número"
    fi
else
    echo "El primer valor introducido no es un número"
fi