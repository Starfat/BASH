#!/bin/bash
# Trekker et tall og vurderer det
tall=$RANDOM
if ((tall < 0)); then
    echo "Tallet er negativt" # Vil aldri skje!
elif ((tall == 0)); then
    echo "Tallet $tall er null"
elif ((tall < 10)); then
    echo "Tallet $tall er mindre enn 10"
elif ((tall < 100)); then
    echo "Tallet $tall er mindre enn 100"
elif ((tall < 1000)); then
    echo "Tallet $tall er mindre enn 1000"
elif ((tall < 10000)); then
    echo "Tallet $tall er mindre enn 10000"
else
    echo "Tallet $tall er større enn 10000"
fi
