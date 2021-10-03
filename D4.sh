#!/bin/bash

# This is not my first bash program
: 'this is multiple line comment in bash 
In bash, bash file extansion can be .sh or .bash 
it should be start with #!bin/bash where binary of bash is present 
# is used for single line comment
to run bash program file we have to write like:
bash filenameWithExtension
'
: '
./filename for excute it we have to give excute permission to file
using chmod cmd
./filename will work
'

target=$(whoami)

echo "HEy there '$target'"
echo $target
printf "write here somthing\nThis is new in bash\n $target\n"
read -p "Waiting for i/o " r
echo $r
read rm
echo $rm
echo $(($r + $rm))

: '

To do muliplication opration we have to write \* as it will * as special char whithout using \* it is working
'
echo $(($r * $rm))
