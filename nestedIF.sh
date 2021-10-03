#!bin/bash
file=$1
fun(){
	if [ -f "$file" ]
	then 
		if [ -w "$file" ]
		then
			echo "Enter text"
			cat >> $file
		else
			echo "NOT writable"
		fi
	else
		echo "$file not found"
	fi
}
fun
