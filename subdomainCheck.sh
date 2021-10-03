#!bin/bash
#set -x This used to debug program without putting -x in cmd line agr

#set sub=$1 this wrongway to implement set parameter
: 'this is using  < this oprator
while read -r sub
do
	if host "$sub.cdac.in" &> /dev/null
	then
		echo "$sub.cdac.in"
	fi

done < subdomains.txt
'
: '
sub=$1

while read -r sub
do
	if [ "$sub.cdac.in" ]
	then
		echo "$sub.cdac.in"
	fi
done < $sub
'
: '
sub=$1

while read sd
do 
	if host "$sd.cdac.in" &> /dev/null
	then
		echo "$sd.cdac.in"
	fi
done < $sub
'
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
