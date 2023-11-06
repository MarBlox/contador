#!/bin/bash

re='^[0-9]+$'

primos() {
    num=$1
    primo=1

    if [ $num -le 1 ]; then
        primo=0
    fi

    for ((i=2; i*i<=num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            primo=0
            break
        fi
    done

    echo $primo
}

while true; do
    echo "Digite o número até o qual deseja encontrar números primos:"
    read n_primo
    clear
    if [[ $n_primo =~ $re ]]; then
        echo "Os numeros primos são"    
        for ((num=2; num<=n_primo; num++)); do
            if [ $(primos $num) -eq 1 ]; then
                echo -n $num && echo -n " "
            fi
        done
        break
    else
        clear
        echo "Tem que ser um número."
    fi
done
echo 