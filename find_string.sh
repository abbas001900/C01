#!/bin/bash

# 🔍 Demande à l'utilisateur le chemin du fichier à analyser
read fichier

# 🔎 Demande la chaîne à rechercher dans le fichier
read char

# 🧪 Recherche de la chaîne dans le fichier
verification=$(grep "$char" "$fichier")

# ✅ Si la chaîne est trouvée, afficher un message
if [ $verification ]; then
    echo "La chaîne '$char' n'a pas été trouvée dans $fichier."
fi
exit 0
