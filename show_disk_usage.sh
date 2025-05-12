#!/bin/bash
# Indique que ce script doit être exécuté avec Bash

echo "Vérification de l'utilisation du disque..."
# Affiche un message informatif

df -h
# Affiche l'utilisation du disque en format lisible (taille humaine)

# Récupère le pourcentage d'utilisation du système de fichiers racine (/)
utilisation=$(df / | awk 'NR==2 {print $5}' | tr -d '%')
# Explication :
# - `df /` affiche l'utilisation du disque pour la racine
# - `awk 'NR==2 {print $5}'` récupère la 2e ligne (celle contenant les données) et la 5e colonne (le pourcentage)
# - `tr -d '%'` enlève le symbole '%' pour pouvoir faire une comparaison numérique

# Vérifie si l'utilisation dépasse 80%
if [ "$utilisation" -gt 80 ]; then
    echo "Attention : l'espace disque principal est utilisé à plus de 80% !"
    # Affiche un message d'avertissement si c'est le cas
else
    echo "Espace disque principal OK."
    # Sinon, tout va bien
fi
# Fin normale du script
exit 0