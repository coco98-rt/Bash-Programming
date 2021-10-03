#!bin/bash

domain=$1
subdomain=$2
while read sd
do
	if host "$sd.$domain" &> /dev/null
	# if host "$sd.$domain"
	then
		echo "$sd.$domain" 
	fi
done < $subdomain
