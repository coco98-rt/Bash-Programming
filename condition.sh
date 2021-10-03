#!bin/bash 

read -p "Enter the number: " num

if [[ num -eq 1 ]] 
then 
	echo " equal "
else 
	echo "not equal "
fi

printf "\n"

read -p "Again enter number : " ff

if [[ $ff -eq 10 ]]
then 
	echo "Dipa didi's birth date "
elif [ $ff == "22" ]
then 
	echo "balaji's birth date "
elif [[ $ff == '23' ]]
then 
	echo "rupa didi's birth date"
fi
