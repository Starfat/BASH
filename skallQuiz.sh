#!/bin/bash
# Spille quiz
echo -e "\n SKALLQUIZ\n ---------\n\n"
echo "Hva står forkortelsen EOF for?"
echo "1) End Of File"
echo "2) Educational Opportunity Fund"
echo "3) Empirical Orthogonal Function"
read -p "Oppgi svar (1-3): " svar
if [ $svar -eq 1 ]; then
    echo "$svar er riktig!"
else
    echo "$svar er feil."
fi
echo "Dersom du skal lese inn passord med read-kommandoen,"
echo "bør du bruke opsjonen "
echo "1) -p"
echo "2) -n"
echo "3) -s"
read -p "Oppgi svar (1-3): " svar
if [ $svar -eq 3 ]; then
    echo "$svar er riktig!"
else
    echo "$svar er feil."
fi
# Du ser at koden for hver oppgave er nesten lik.
# Er det mulig å lage en funksjon som så kalles flere ganger?
