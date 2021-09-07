#!/bin/bash

compnums(){
	if [ $1 -gt $2 ] 
	then
		echo  $1 'es mayor a ' $2
	else
		if [ $1 -ge $2 ]
			then
				echo $1 'es igual a ' $2
			else
				echo $1 'es menor a ' $2
		fi
	fi	
}
while true; do
	read -p 'Ingrese un numero ' num1
	read -p 'Ingrese otro numero ' num2
	compnums $num1 $num2
done
	
	

