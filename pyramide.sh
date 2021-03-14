#!/bin/bash
# Pyramide
# 

read -p "Hvor stor? " hoyde

hoydeteller=0
while ((hoydeteller < hoyde)); do
	tall=0
	while ((tall < hoyde)); do
		echo -n 1		# -n for å unngå linjeskift
		tall=$((tall+1))
	done
	echo	# Gir linjeskift
	hoydeteller=$((hoydeteller+1))
done