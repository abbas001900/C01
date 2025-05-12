#!/bin/bash
# Indique que ce script doit être exécuté avec l'interpréteur Bash

# Demander le nom du fichier à l'utilisateur
read fichier
# Stocke la saisie dans la variable 'fichier'

# Demander la chaîne de caractères à rechercher dans le fichier
read chaine
# Stocke la saisie dans la variable 'chaine'

# Recherche de la chaîne dans le fichier à l'aide de grep
if grep -q "$chaine" "$fichier"; then
    # L'option -q permet de faire une recherche silencieuse (sans affichage), juste pour tester la présence
    grep "$chaine" "$fichier"
    # Si la chaîne est trouvée, on affiche toutes les lignes qui la contiennent
else
    echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
    # Si la chaîne n'est pas trouvée, on affiche un message d'information
fi
# Fin normale du script
exit 0