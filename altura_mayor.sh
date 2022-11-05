#!/bin/bash

#Se introduce la altura de las tres personas
echo "Introduce la altura en centímetro de la persona 1: "
read persona1
echo "Introduce la altura en centímetro de la persona 2: "
read persona2
echo "Introduce la altura en centímetro de la persona 3: "
read persona3
esValido=0

# Se valida que se ha introducido números en los valores
if [ "$persona1" -eq "$persona1" ] 2> /dev/null 
then
    if [ "$persona2" -eq "$persona2" ] 2> /dev/null 
    then
        if [ "$persona3" -eq "$persona3" ] 2> /dev/null
        then
            echo "Has introducido bien los valores"
                esValido=1
        else
            echo "Los datos de la persona 3 introducidos no son números"
        fi
    else
        echo "Los datos de la persona 2 introducidos no son números"
    fi
else
    echo "Los datos de la persona 1 introducidos no son números"
fi

#Si se ha introducido todos los valores bien, entrará dentro para ver quien era mayor
if [ $esValido -eq 1 ]
then
    if [ $persona1 -gt $persona2 ] && [ $persona1 -gt $persona3 ] #Validamos si la persona 1 es más grande que las otras dos
    then
        metros=$((persona1/100))
        centimetros=$((persona1%100)) 
            echo "La persona 1 es la persona más alta con $metros metro/s y $centimetros centímetro/s."
    elif [ $persona2 -gt $persona1 ] && [ $persona2 -gt $persona3 ] #Validamos si la persona 2 es más grande que las otras dos
    then
        metros=$((persona2/100))
        centimetros=$((persona2%100)) 
            echo "La persona 2 es la persona más alta con $metros metro/s y $centimetros centímetro/s."
    elif [ $persona3 -gt $persona1 ] && [ $persona3 -gt $persona2 ] #Validamos si la persona 3 es más grande que las otras dos
    then
        metros=$((persona3/100))
        centimetros=$((persona3%100)) 
            echo "La persona 3 es la persona más alta con $metros metro/s y $centimetros centímetro/s."
    else
        echo "Todos miden lo mismo"
    fi
fi