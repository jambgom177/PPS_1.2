#!/bin/bash

function mostrarUsuario {
    if id "$nuevoUsuario" >> logUsuarios.log 2>&1 #Corroboramos que ese usuario exista y lo metemos en el log
    then
        echo ""
        local usuario=`id $nuevoUsuario | cut -d" " -f1,2` #guardamos el id y gid del usuario en una variable local para que solo se muestre en esta función
        echo "$usuario"
        echo "Y Con directorio home/$nuevoUsuario" #Si realmente el usuario existe tendrá un directorio con ese nombre en home
        echo ""
        # Aqui podría introducir también si queremos introducir otro usuario cada vez que nos ha mostrado un usuario
        # pero como solo quiero preguntar una vez lo meto al principio de la ejecución del script 
        # y cuando la opción no es valida en la función de opcionNuevoUsuario
    else
        echo "El usuario $nuevoUsuario no existe."
        # Aqui podría introducir también si queremos introducir otro usuario cada vez que nos ha mostrado un usuario
        # pero como solo quiero preguntar una vez lo meto al principio de la ejecución del script 
        # y cuando la opción no es valida en la función de opcionNuevoUsuario
    fi
}

function opcionNuevoUsuario {
    echo "¿Quieres introducir otro usuario o quieres salir del programa? Pon una S si es un si y una N si es un no."
    read opcion # Recogemos la opción por pantalla
    case "$opcion" in #Dependiendo de la opción pasará por una u otra, en este caso tienen que ser mayusculas si o si
    S)
    echo "Escribe el usuario de un nuevo usuario"
        read nuevoUsuario #Recoge el usuario por pantalla
        mostrarUsuario #se ejecuta esta función que recogerá dentro la variable anteriormente cogida(ambas tienen el mismo nombre)
        echo "";;
    N)
        echo "No se va a introducir ningún usuario más.";;
    *)
        echo "Debes elegir una de las dos opciones, S o N."
        echo "$opcion no es una opción válida"
        echo ""
        opcionNuevoUsuario;; #Volvemos a preguntar por una opción porque la anterior elegida no es válida
    esac
}

if [ "$#" -eq "0" ] #Corroboras si se ha metido un usuario
then
    echo "No se ha introducido ningún parámetro"
else
    if id "$1" >> logUsuarios.log 2>&1 #Comprobamos si el usuario introducido existe
    then
        # Mostramos ID UID GID
        nuevoUsuario=$1
        mostrarUsuario #Mostramos el usuario metido por parámetro
        opcionNuevoUsuario #Mostramos si queremos introducir un nuevo usuario
    else
        echo "El usuario $1 no existe"
        # Aqui podría introducir también si queremos introducir otro usuario cada vez que nos ha mostrado un usuario
        # pero como solo quiero preguntar una vez lo meto al principio de la ejecución del script 
        # y cuando la opción no es valida en la función de opcionNuevoUsuario
    fi 
fi  