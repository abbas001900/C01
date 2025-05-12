#!/bin/bash

read nbre1
read nbre2
read op

case "$op" in
    "+")
        echo "Résultat :$((nbre1 + nbre2))"
        ;;
    "-")
        echo "Résultat :$((nbre1 - nbre2))"
        ;;
    "*")
        echo "Résultat :$((nbre1 * nbre2))"
        ;;
    "/")
        if [ "$nbre2" -eq 0 ]; then
        
        else
            echo "Résultat :$((nbre1 / nbre2))"
        fi
        ;;
esac
