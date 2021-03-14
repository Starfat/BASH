#!/bin/bash
# Spør bruker om bredde og høyde, 
# skriver felt med siffer

# Funksjonen siffer skriver ett tilfeldig siffer 0..9
siffer(){
	echo -n $((RANDOM%10))
}

# Funksjonen sifferlinje skriver en linje med siffer
# med bredde lik innholdet av variabelen «bredde»
sifferlinje(){
	local breddeteller=0;
	while ((breddeteller<bredde)); do
		siffer	# Kaller funksjonen siffer
		breddeteller=$((breddeteller+1))
	done
	echo
}

# Programmet starter her:
read -p "Bredde og høyde: " bredde hoyde

hoydeteller=0
while ((hoydeteller < hoyde)); do
	sifferlinje		# Kaller funksjonen
	hoydeteller=$((hoydeteller+1))
done
