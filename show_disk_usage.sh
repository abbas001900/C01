#!/bin/bash

echo "Vérification de l'utilisation du disque..."

# Afficher l'utilisation du disque de façon lisible
df -h

# Petite condition pour détecter si / est à plus de 80%
utilisation=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$utilisation" -gt 80 ]; then
    echo "Attention : l'espace disque principal est utilisé à plus de 80% !"
else
    echo "Espace disque principal OK."
fi
