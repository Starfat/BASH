#!/bin/bash
# Løsningsforslag leksjon 9, kapittel 29, smilefjes
type1=":-)"
type2=";-)"
type3=":-("
while true; do
    read -p "Hvilket fjes (1-3) og antall (avslutt med 0): " type antall
    if [[ "$antall" -eq 0 ]]; then
        echo -e "Ha det!\n"
        exit
    fi
    if [[ "$antall" -lt 0 ]]; then
        echo "Må ha antall større enn null"
        continue
    fi
    if [[ "$type" -lt 1 || "$type" -gt 3 ]]; then
        echo "Må ha type mellom 1 og 3"
        continue
    fi
    while [[ $antall -gt 0 ]]; do
        case $type in
        1)
            echo -n "$type1 "
            ;;
        2)
            echo -n "$type2 "
            ;;
        3)
            echo -n "$type3 "
            ;;
        *)
            echo "$type ikke forstått. Prøv igjen!"
            break
            ;;
        esac
        antall=$((antall - 1))
    done
    echo
done
