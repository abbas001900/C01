#!/bin/bash

# 🗂️ Ici nous demandons à l'utilisateur le nom d'un dossier
read -p "📁 Entrez le nom du dossier :" myfolder


# 📌 Ici on érifie si le dossier existe
if [ -d "$myfolder" ]; then

    # 📊 Ici Compte les éléments ordinaires dans le dossier
    nbreItem=$(ls -1 "$myfolder" | wc -l)

    # ✅ Ici on vérifie si le dossier est vide
    if [ "$nbreItem" -eq 0 ]; then
        echo "Le dossier $myfolder est vide 0 fichier(s)."
    else
        echo "Le dossier $myfolder contient $nbreItem fichier(s)."
    fi
else
    # ❌ Message d'erreur si le dossier n'existe pas
    echo "Le dossier $myfolder n'existe pas."
fi
exit 0