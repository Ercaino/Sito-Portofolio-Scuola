#!/bin/bash

for arg in "$@"
do
index =$ ( echo $arg | cut -f1 -d = )
val =$ ( echo $arg | cut -f2 -d = )
case $index in
X ) x = $valore ;;

Y ) y = $valore ;;

* )
esac
done
( ( risultato =x+y ) )
echo "X+Y= $risultato "
