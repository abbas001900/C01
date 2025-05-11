#!/bin/bash

# Demander le nom du fichier
read fichier

# Demander la chaîne à rechercher
read chaine

# Rechercher avec grep
if grep -q "$chaine" "$fichier"; then
    grep "$chaine" "$fichier"
else
    echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
fi
