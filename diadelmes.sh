#!/bin/bash

actualDate=`date +%m` #Recogemos en números el mes en el que estamos

    # Dependiendo del mes que sea entrará en uno u otro, febrero lo he puesto por si no existe ninguno de los anteriores
    # entrará al menos en ese porque no existen más meses en el años
    case "$actualDate" in 
    "01"|"03"|"05"|"07"|"08"|"10"|"12") echo "Estamos en `date +%B`, un mes con 31 días";;
    "04"|"06"|"09"|"11") echo "Estamos en `date +%B`, un mes con 30 días";;
    *) echo "Estamos en `date +%B`, un mes con 28 días"
    esac