#!/bin/bash

read a
read b
read op

if [ "$op" == "+" ]; then
    echo "Résultat : $((a + b))"
elif [ "$op" == "-" ]; then
    echo "Résultat : $((a - b))"
elif [ "$op" == "*" ]; then
    echo "Résultat : $((a * b))"
elif [ "$op" == "/" ]; then
    if [ "$b" -eq 0 ]; then
        echo "Erreur : division par zéro"
    else
        echo "Résultat : $((a / b))"
    fi
else
    echo "Opérateur invalide"
fi
