#!/bin/bash


echo "+-----------------------+"
echo "| LINUX LOCAL EMULATION |"
echo "+-----------------------+"

echo  "1. MAUNAL " 
echo  "2. AUTO   " 
echo  "3. EXIT "
read  a
if [ $a == 1 ]
then
#	echo "$(hostname)"
echo "[+] Hostname:" $(hostname)
elif [ $a == 2 ]
then 
#	echo "$(cat /etc/passwd)"
echo "[+] All Users:" $(cat /etc/passwd | awk '{print $1}')
echo "[+] Current User:"$(cat /etc/passwd | grep "root")

elif [ $a == 3 ]
then 
#	echo "Error"
exit
else 
	echo "[!] Error"
fi

