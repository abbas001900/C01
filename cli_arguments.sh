#!/bin/bash
# Indique que le script doit être exécuté avec l'interpréteur Bash

read char
# Lit une ligne de texte entrée par l'utilisateur et la stocke dans la variable 'char'

set -- $char
# Utilise la commande 'set' pour transformer le contenu de 'char' en une liste d'arguments ($1, $2, ...)
# Cela permet de traiter chaque mot saisi séparément comme un argument

i=1
# Initialise un compteur pour numéroter les arguments

# Boucle tant qu'il reste au moins un argument
while [ $# -gt 0 ]; do
    echo "Argument $i: $1"
    # Affiche le numéro de l'argument et sa valeur

    shift
    # Supprime le premier argument, les suivants deviennent $1, $2, etc.

    i=$((i + 1))
    # Incrémente le compteur
done
exit 0
