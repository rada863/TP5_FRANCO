#!/bin/bash


numero_secreto=$((RANDOM % 100 + 1))

echo "¡ juego de Adivina el Número!"
echo " un número entre 1 y 100"

intentos=0
while true; do
    read -p "Introduce tu intento: " intento

    if [[ $intento -eq $numero_secreto ]]; then
        echo "¡Felicitaciones! Has adivinado el número."
        break
    elif [[ $intento -lt $numero_secreto ]]; then
        echo "El número es más alto. Sigue intentando."
    else
        echo "El número es más bajo. Sigue intentando."
    fi

    ((intentos++))
    if [[ $intentos -ge 10 ]]; then
        echo "Has agotado tus 10 intentos. El número era $numero_secreto."
        break
    fi
done
