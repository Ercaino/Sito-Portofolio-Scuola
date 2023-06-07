#!/bin/bash

echo "Numero esecuzioni: "
read n
echo "IP: "
read IP

echo "Output [1] file o [2] line: "
read comm
if [[ "$comm" = "1" ]]; then
	echo "Nome file"
	read nomefile
	if [ -e "$nomefile" ]; then
 		echo "Il file esiste!"

		echo "[1] sovrascrivere o [2] appendere" 
		read rix

		if [[ "$rix" = "1" ]]; then
			ping -w $n $IP > $nomefile
		elif [[ "$rix" = "2" ]]; then
			ping -w $n $IP >> $nomefile
		fi
	else
	 echo "Il file non esiste!"
	fi	
elif [[ "$comm" = "2" ]]; then
	ping -w $n $IP
else 
	echo "errore"	
fi
