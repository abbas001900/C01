#!/bin/bash

read -p "Entrez le premier nombre : " nbre1
read -p "Entrez le deuxième nombre : " nbre2
read -p "Entrez l'opérateur (+, -, *, /) : " op

case "$op" in
    "+")
        echo "Résultat : $((nbre1 + nbre2))"
        ;;
    "-")
        echo "Résultat : $((nbre1 - nbre2))"
        ;;
    "*")
        echo "Résultat : $((nbre1 * nbre2))"
        ;;
    "/")
        if [ "$nbre2" -eq 0 ]; then
            echo "Erreur : division par zéro interdite"
        else
            echo "Résultat : $((nbre1 / nbre2))"
        fi
        ;;
    *)
        echo "Opérateur invalide. Utilisez +, -, * ou /"
        ;;
esac
