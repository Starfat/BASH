#!/bin/bash
# Spør bruker om bredde og høyde, 
# skriver felt med små bokstaver

# Funksjonen bokstav skriver en tilfeldig bokstav mellom a og j
bokstav(){
	local tall=$((RANDOM % 10))
	case $tall in
		0) echo -n "a" ;;
		1) echo -n "b" ;;
		2) echo -n "c" ;;
		3) echo -n "d" ;;
		4) echo -n "e" ;;
		5) echo -n "f" ;;
		6) echo -n "g" ;;
		7) echo -n "h" ;;
		8) echo -n "i" ;;
		9) echo -n "j" ;;
		*) echo -n "*" ;;
	esac
}

# Funksjonen bokstavlinje skriver en linje med tilfeldige bokstaver
# Linja har bredde lik innholdet av variabelen «bredde»
bokstavlinje(){
	local breddeteller=0;
	while ((breddeteller<bredde)); do
		bokstav	# Kaller funksjonen bokstav
		breddeteller=$((breddeteller+1))
	done
	echo
}

# Programmet starter her:
read -p "Bredde og høyde: " bredde hoyde

hoydeteller=0
while ((hoydeteller < hoyde)); do
	bokstavlinje	# Kaller funksjonen bokstavlinje
	hoydeteller=$((hoydeteller+1))
done
