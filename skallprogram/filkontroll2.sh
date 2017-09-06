#!/bin/bash

fil=$1
tid=$2

	while [ -a $1 ];
	
do

	while [ -a $1 ];

do

	#Sjekk om filen er opprettet
	if [ -a $1 ];

	then echo "Filen $1 er opprettet"

	fi

	

#Sjekk om filen er blitt endret

	if [ -N $1 ];

	then echo "Filen er endret siden forrige kontroll"

	exit 0
	
	fi
sleep 5
	
done

echo "Filen er slettet"

done
