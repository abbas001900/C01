#!/bin/bash

# 🗂️ Ici nous demandons à l'utilisateur le nom d'un dossier
read myfolder


# 📌 Ici on érifie si le dossier existe
if [ -d "$myfolder" ]; then

    # 📊 Ici Compte les éléments ordinaires dans le dossier
    nbreItem=$(ls "$myfolder" | wc -l)

    # ✅ Ici on vérifie si le dossier est vide
    if [ "$nbreItem" -eq 0 ]; then
        echo "Le dossier $myfolder contient 0 fichier(s)."
    else
        echo "Le dossier $myfolder contient $nbreItem fichier(s)."
    fi
else
    # ❌ Message d'erreur si le dossier n'existe pas
    echo "Le dossier $myfolder n'existe pas."
fi
exit 0