#!/bin/bash

echo "Introduce un número: "
read input #Recoge el valor que se pide
if [ -z "$input" ] #Corrobora si lo manda vacío
then
    echo "No se ha recogido ningún valor"
elif  ! [ "$input" -eq "$input" ] 2> /dev/null #Corrobora si NO es un número
then
    echo "El valor recogido $input no es un número"
else
    let restosInput=$input%10 #Realiza la operación para saber si tiene restos
    if [ $restosInput -eq 0 ] #Si el resto es 0, es múltiplo de 10 y si no, no lo es
    then
        echo "El número $input es múltiplo de 10"
    else
        echo "El número $input no es múltiplo de 10"
    fi
fi