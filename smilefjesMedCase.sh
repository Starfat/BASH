#!/bin/bash
# Løsningsforslag smilefjesgenerator leksjon 10, oppgave 1

type1=":-)"
type2=";-)"
type3=":-("

echo "SMILEFJESGENERATOR"
echo "Dette programmet kan lage ulike smilefjes"
echo "1) $type1"
echo "2) $type2"
echo "3) $type3"
echo -n "Oppgi ønsket smilefjes (1..3) : "
read type

case $type in
	1)	echo $type1
		;;
	2)	echo $type2
		;;
	3)	echo $type3
		;;
	*)	echo "Må ha type mellom 1 og 3"
		exit 1
esac