#!/bin/bash

#4. piemērs
echo -e "\n"

echo "Atbilde uz jautājumu - kas tiek pildīts?"           $0
#echo $n
echo "Skriptam nodoto argumenti skaits: " $#
echo "Argumentu saraksts (attēlešana/grupēšāna 1. veids)" $*
echo "Arugmentu saraksts (attēlešana/grupēšāna 2. veids)" $@
#ech "Arugmentu saraksts (attēlešana/grupēšāna 2. veids)" $@
echo "Iepriekš.  komandas izpildes rezultāta kļūdas kods: " $?
#0 - kļūda
#126 - permission denied
#127 - command not found
echo "Tekošo procesa numurs:" $$
echo "Enā palaista (pedēja)  procesa numurs:"$!

#3. piemērs
#NAME="Vārds Uzvārds"
#echo $NAME
#unset NAME
#echo $NAME

#2. piemērs
#NAME="Vārds Uzvārds"
#readonly NAME
#echo $NAME
#NAME="Uzvārds Vārds"
#echo $NAME

#1. piemērs
#NAME="Vārds Uzvārds"
#echo $NAME

echo -e "\n"
