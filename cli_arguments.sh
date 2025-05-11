#!/bin/bash
read char

set -- $char

i=1

# Tant qu'il reste des arguments
while [ $# -gt 0 ]; do
    echo "Argument $i: $1"
    shift       # Enlève le premier argument ($1 devient le suivant)
    i=$((i + 1))
done
