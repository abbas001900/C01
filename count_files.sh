#!/bin/bash

# 🗂️ Ici nous demandons à l'utilisateur le nom d'un dossier
read myfolder


# 📌 Ici on érifie si le dossier existe

    # 📊 Ici Compte les éléments ordinaires dans le dossier
    nbreItem=$(ls "$myfolder" | wc -l)

    # ✅ Ici on vérifie si le dossier est vide
    if [ "$nbreItem" -gt 0 ]; then
        echo "Le dossier $myfolder contient $nbreItem fichier(s)."
    else
        echo "Le dossier $myfolder contient 0 fichier(s)."
    fi
exit 0