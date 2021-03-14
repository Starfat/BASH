#!/bin/bash
# Summer tall til input er 0

sum=0
while true; do
	read -p "Oppgi tall, avslutt med 0: " tall
	if ((tall == 0)); then
		break
	fi
	sum=$((sum+tall))
done

echo "Summen er $sum"