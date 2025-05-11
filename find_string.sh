#!/bin/bash

# 🔍 Demande à l'utilisateur le chemin du fichier à analyser
read fichier

    # 🔎 Demande la chaîne à rechercher dans le fichier
    read char

    # 🧪 Recherche de la chaîne dans le fichier
    verification=$(grep "$char" "$fichier")

    # ✅ Si la chaîne est trouvée, afficher un message
    if [ -n "$verification" ]; then
        echo "La chaîne '$char' a été trouvée dans le fichier $fichier."
    else
        echo "La chaîne '$char' n'a pas été trouvée dans le fichier $fichier."
    fi

else
    # ❗ Affiche une erreur si le fichier n'existe pas
    echo "Le fichier $fichier n'existe pas."
fi
exit 0
