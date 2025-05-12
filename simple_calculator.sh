#!/bin/bash
# Déclaration de l'interpréteur Bash

# Lecture de l'entrée utilisateur : deux nombres et un opérateur
# L'utilisateur doit saisir sur une seule ligne : nombre1 nombre2 opérateur
read nbre1 nbre2 op

# Utilisation de l'instruction 'case' pour traiter l'opérateur saisi
case "$op" in
    "+")
        # Si l'opérateur est '+', on affiche la somme des deux nombres
        echo "Résultat : $((nbre1 + nbre2))"
        ;;
    "-")
        # Si l'opérateur est '-', on affiche la différence entre les deux nombres
        echo "Résultat : $((nbre1 - nbre2))"
        ;;
    "*")
        # Si l'opérateur est '*', on affiche le produit des deux nombres
        echo "Résultat : $((nbre1 * nbre2))"
        ;;
    "/")
        # Si l'opérateur est '/', on vérifie d'abord que le deuxième nombre n'est pas 0
        if [ "$nbre2" -eq 0 ]; then
            # Si le deuxième nombre est 0, on affiche une erreur
            echo "Erreur : division par zéro interdite"
        else
            # Sinon, on effectue la division entière
            echo "Résultat : $((nbre1 / nbre2))"
        fi
        ;;
    *)
        # Si l'opérateur n'est pas reconnu, on affiche un message d'erreur
        echo "Opérateur invalide. Utilisez +, -, * ou /"
        ;;
esac
exit 0
