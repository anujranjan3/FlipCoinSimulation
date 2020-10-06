#!/bin/bash -x

read -p "Enter the number of times you want to flip coin : " counter;
tails=0;
heads=0;
for (( i=0; i<$counter; i++ ))
do
randomNum=$((RANDOM%2));
if [ $randomNum -eq 0 ];
then
	tails=$(($tails+1));
	echo Tails;
else
	heads=$(($heads+1));
	echo Heads;
fi
done
echo "Heads Count :"$heads "and Tails count : " $tails;
