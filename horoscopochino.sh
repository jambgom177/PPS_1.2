#!/bin/bash

echo "Introduce un año introducida entre los años 1 y 2022 años: "
read year #Recogemos el año en el que nacimos


if [ "$year" -eq "$year" ] 2> /dev/null #Comprobamos que sea un número
then
    if [ "$year" -ge "1" ] && [ "$year" -le "2022" ] #Comprobamos que esté entre 1 y 2022
    then
        birthChinoResto=$(($year%12)) #Realizamos la operación para saber el resto
        case "$birthChinoResto" in #Dependiendo del resto que salga te dirá tu horóscopo chino
        "0") echo "Tu horoscopo chino es La rata";;
        "1") echo "Tu horoscopo chino es El buey";;
        "2") echo "Tu horoscopo chino es El tigre";;
        "3") echo "Tu horoscopo chino es El conejo";;
        "4") echo "Tu horoscopo chino es El dragón";;
        "5") echo "Tu horoscopo chino es La serpiente";;
        "6") echo "Tu horoscopo chino es El caballo";;
        "7") echo "Tu horoscopo chino es La cabra";;
        "8") echo "Tu horoscopo chino es El mono";;
        "9") echo "Tu horoscopo chino es El gallo";;
        "10") echo "Tu horoscopo chino es El perro";;
        "11") echo "Tu horoscopo chino es El cerdo"
        esac
    else
        echo "La edad introducida no está entre el año 1 y 2022"
    fi
else
    echo "Los datos introducidos no son números"
fi