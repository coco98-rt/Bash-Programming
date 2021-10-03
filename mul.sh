#!bin/bash

num1=40
num2=20

echo $(($num1 - $num2))
sum=$(($num1 / $num2))
echo $sum

sum=`expr $num1 + $num2`
echo $sum
sum=$(expr $num1 + $num2)
echo $sum
sum=$(expr $num1 \* $num2)
echo $sum

: '

bash -x filename => is used to debug bash program
'
