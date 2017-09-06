#!/bin/bash

fil=$1
tid=$2

while true; 

do

#Sjekk om filen er opprettet
	if [ -a $1 ];

	then echo "Filen $1 er opprettet"

#While løkke dersom filen eksisterer	

	else

	echo "Filen er slettet"

	fi

#Sjekk om filen er slettet
	#if [ not -a $1 ];
	
	#then echo "Filen er slettet"

	#fi

#Sjekk om filen er blitt endret
	if [ -N $1 ];

	then echo "Filen er endret siden forrige kontroll"
	
	fi

done
