#!/bin/bash
# Program som bruker innhold av to variable til å skrive ut
TEGN="A" # STORE bokstaver til konstanter
ANTALL=5
# Eller: read -p "Gi tegn og antall: " TEGN ANTALL
teller=0 # små bokstaver til variable
while ((teller < ANTALL)); do
    echo -n $TEGN          # -n gir alt på samme linje
    teller=$((teller + 1)) # øk teller med 1
done
echo # gir avsluttende ny linje


# For å gjøre forvirringen komplett -
# løkketesten kan utformes på mange måter:
# while [ $teller -lt $ANTALL ]; do
# while [ $teller \< $ANTALL ]; do
# while [[ $teller < $ANTALL ]]; do
# while [[ teller -lt ANTALL ]];
