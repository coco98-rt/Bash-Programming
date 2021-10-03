#!bin/bash

f1(){
	echo "IN FUNCTION"
}

f2(){
	echo "IN FUNCTION 2"

}
menu(){
	printf "1. Fun1\t 2.Fun2\t 3.Exit\n"
	read in
}

menu
: '
#IN one line 
case $in in "1") f1 ;; "2") f2 ;; "3") exit ;; *) echo "Wrong Input" ;; esac

'
case $in in 
	"1")
		f1
		;;
	"2")
		f2
		;;
	"3")
		exit
		;;
	*)
		echo "wrong input"
		;;
esac
























