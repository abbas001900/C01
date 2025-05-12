#!/bin/bash

read -p "Entrez le premier nombre: " a
read -p "Entrez le premier nombre: " b
read -p "Entrez le premier nombre: " op

if [ "$op" = "+" ]; then
    echo "Résultat : $((a + b))"
elif [ "$op" = "-" ]; then
    echo "Résultat : $((a - b))"
elif [ "$op" = "*" ]; then
    echo "Résultat : $((a * b))"
elif [ "$op" = "/" ]; then
    if [ "$b" -eq 0 ]; then
        echo "Erreur : division par zéro"
    else
        echo "Résultat : $((a / b))"
    fi
else
    echo "Opérateur invalide"
fi
