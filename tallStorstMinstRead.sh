#!/bin/bash
# Program som trekker spør om to tall, leser inn. skriver de ut,
# og forteller hvilket som er minst og hvilket som er størst
read -p "Gi to tall: " a b
echo "Tallene er: $a $b"
if ((a > b)); then
    echo "Det minste er $b"
    echo "Det største er $a"
else
    echo "Det minste er $a"
    echo "Det største er $b"
fi
# Alternativ løsning - bytt if-setningen over med:
#
# if (( a > b )); then
# minst=$b
# storst=$a
# else
# minst=$a
# storst=$b
# fi
#
# echo "Det minste er $minst"
# echo "Det største er $storst"
