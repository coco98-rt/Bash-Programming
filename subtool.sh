#!bin/bash 
#domain=$1
#subdomain=$2

banner(){
        printf ' ____  _   _ ____ _____ ___   ___  _\n'
        printf '/ ___|| | | | __ )_   _/ _ \ / _ \| |\n'
        printf '\___ \| | | |  _ \ | || | | | | | | |\n'
        printf ' ___) | |_| | |_) || || |_| | |_| | |___\n'
        printf '|____/ \___/|____/ |_| \___/ \___/|_____|\n'
}


help(){
	echo "----------------"
	echo " SUBTOOL HELP   "
	echo "----------------"
	echo " -d Domain.TLD  "
	echo " -f FILE.TXT    "
	echo " -h help        "
}

check(){
	type -P host &> /dev/null
	if [[ ! $? -eq 0 ]] 
	then
		echo " Host command not found. Install it ! "
		exit 1
	fi
}
main(){
	if [ -f "$subdomain" ]
	then 
		check 
		brute
	else
		echo "File $subdomain not found "
		exit 1
	fi
}

brute(){
while read sd
do
	if host "$sd.$domain" &> /dev/null
	# if host "$sd.$domain"
	then
		echo "$sd.$domain" 
	fi
done < $subdomain
}
domain_check(){

	echo $domain | grep -iE '^([a-zA-Z0-9](([a-zA-Z0-9-]){0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,}$' &> /dev/null 2>&1
	if [[ ! $? -eq 0 ]] 
	then
		printf "[-] Domain $domain is not valid !! \n"
		exit 1
	fi
}

attrib(){

while :
do
	case "$1" in 
		'-d')
			domain=$2
			shift
		;;
		'-f')
			subdomain=$2
			shift
		;;
		'-h')
			help
			exit 0
		;;
         	"")
			shift
			break
		;;
		*)
			printf "\t[-] Unknown option: $1 \n"
			printf "\tUse: bash subtool.sh -h \n"
			exit 1
		;;
	esac
	shift
done

if [[ ! -z "$domain" ]]
then 
     domain_check

else
	printf "NO Domain givin \n"
	printf "\t Usage: bash subtool.sh -h \n"
	exit 1
fi

}

banner
attrib $@
main















