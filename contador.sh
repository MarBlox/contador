#!/bin/bash

contador1=0
contador2=0
contador_2=()
contadorv=0

while [[ contador1 -ne 5 ]]; do
    contador1=$((contador1 + 1))
    echo -n
    while [[ contador2 -ne 5 ]]; do
        contador2=$((contador2 + 1))
        contador_2+=("$contador2" ",")
        contadorv=$((contadorv + 1))
        while [[ contadorv -ne 5 ]]; do
            contador_2+=(",")
            break
        done
    done

    echo -n $contador1 && echo -n " -> " && echo ${contador_2[@]}
    contadorv=0
    contador2=0
    contador_2=()
    echo
done