#!/bin/bash

# Se realiza las operaciones que se han seleccionado después del menú
function Sumar {
    echo "La suma de $numero1 y $numero2 es $(($numero1+$numero2))"
    echo ""
    ElegirOpcion # Volverá a elegir las opciones
}
function Restar {
    echo "La resta de $numero1 y $numero2 es $(($numero1-$numero2))"
    echo ""
    ElegirOpcion # Volverá a elegir las opciones
}
function Dividir {
    echo "La división de $numero1 y $numero2 es $(($numero1/$numero2))"
    echo ""
    ElegirOpcion # Volverá a elegir las opciones
}
function Multiplicar {
    echo "La multiplicación de $numero1 y $numero2 es $(($numero1*$numero2))"
    echo ""
    ElegirOpcion # Volverá a elegir las opciones
}

function ElegirOpcion {
    echo "Menú de la calculadora"
    echo "1) Sumar"
    echo "2) Restar"
    echo "3) Dividir"
    echo "4) Multiplicar"
    echo "5) Salir
"

echo "Elige que opción quieres:"
read opcion #Recogemos la opción por consola
Operaciones #realizamos la operación elegida
}

function Operaciones {
if [ "$opcion" -eq "$opcion" ] 2> /dev/null #comprobamos si es un número
then
    if [ "$opcion" -eq "5" ] #comprobamos si es la opción 5 para salir
    then
        exit
    fi

    if [ $opcion -gt 0 ] && [ $opcion -lt 6 ] #Comprobamos si es mayo de 0 y menos de 6
    then
        #Leemos los dos números diferentes para realizar luego la opción
        echo "Elige el primer número"
        read numero1
        echo "Elige el segundo número"
        read numero2
        if [ "$numero1" -eq "$numero1" ] 2> /dev/null  #Corroboramos que sea un número
        then
            if [ "$numero2" -eq "$numero2" ] 2> /dev/null  #Corroboramos que sea un número
            then
                # Entrará en la opción que se ha elegido antes
                case $opcion in
                    "1") Sumar;;
                    "2") Restar;;
                    "3") Dividir;;
                    "4") Multiplicar;;
                    
                esac
            else
                echo "El segundo valor no es un número"
                echo ""
                Operaciones # Volverá a elegir las opciones
            fi
        else
            echo "El primer valor introducido no es un número"
            echo ""
            Operaciones # Volverá a elegir las opciones
        fi
    else
    echo "La opción elegida no está entre 1 y 5, vuelva a seleccionar otro número"
    ElegirOpcion # Si la opción que se ha elegido no está entre 1 y 5 y volverá a pedir un número para saber que opción de operación hacer
    fi
else
    echo "La opción elegida no es un número"
    echo ""
    ElegirOpcion # Volverá a elegir las opciones
fi
}

ElegirOpcion #En realidad el script se ejecuta desde aqui cogiendo las funciones que se encuentran arriba

