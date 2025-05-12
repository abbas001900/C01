#!/bin/bash
# 🐚 Script Bash pour vérifier le contenu d'un dossier

# 🗂️ Demander à l'utilisateur le nom d'un dossier
read myfolder

# 📌 Vérifier si le dossier existe
if [ -d "$myfolder" ]; then

    # 📊 Compter les éléments (fichiers et sous-dossiers) dans le dossier
    nbreItem=$(ls -A "$myfolder" | wc -l)
    # Remarque : 'ls -A' ignore '.' et '..' (meilleur pour détecter un dossier vide)

    # ✅ Vérifier si le dossier est vide ou non
    if [ "$nbreItem" -gt 0 ]; then
        echo "Le dossier '$myfolder' contient $nbreItem fichier(s) ou élément(s)."
    else
        echo "Le dossier '$myfolder' est vide."
    fi

else
    # ❌ Le dossier n'existe pas
    echo "Erreur : le dossier '$myfolder' n'existe pas."
fi

exit 0
