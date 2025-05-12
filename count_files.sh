#!/bin/bash
# 🐚 Déclaration de l'interpréteur Bash

# 🗂️ Ici nous demandons à l'utilisateur le nom d'un dossier
read myfolder
# L'utilisateur saisit le nom d'un dossier qui est stocké dans la variable 'myfolder'


# 📌 Ici on érifie si le dossier existe
# ⚠️ Il manque la vérification réelle ici (par exemple : if [ -d "$myfolder" ]; then)

if [ -d "$myfolder" ]; then
    # 📊 Ici Compte les éléments ordinaires dans le dossier
    nbreItem=$(ls "$myfolder" | wc -l)
    # 'ls' liste les fichiers du dossier, 'wc -l' compte le nombre de lignes (donc d'éléments)

    # ✅ Ici on vérifie si le dossier est vide
    if [ "$nbreItem" -gt 0 ]; then
        # Si le nombre d'éléments est supérieur à 0
        echo "Le dossier $myfolder contient $nbreItem fichier(s)."
    else
        # Sinon, le dossier est vide
        echo "Le dossier $myfolder contient 0 fichier(s)."
    fi
else
    echo "Le dossier my folder n'exite pas"
# Fin normale du script
