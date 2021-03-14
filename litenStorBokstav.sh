#!/bin/bash
# Løsningsforslag leksjon 9, kapittel 29, oppgave 8
while true; do
    read -p "Gi et tegn, avslutt med blank: " tegn
    if [[ -z $tegn ]]; then # tom linje
        break
    fi
    case $tegn in
    # Norske bokstaver fungerer ikke her
    [A-Z])
        echo "$tegn er stor bokstav"
        ;;
    [a-z])
        echo "$tegn er liten bokstav"
        ;;
    *)
        echo "$tegn er ikke forstått, prøv igjen"
        ;;
    esac
done
echo -e "\nTakk for nå!\n"
