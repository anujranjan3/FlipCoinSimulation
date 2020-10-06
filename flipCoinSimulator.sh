#!/bin/bash -x

tails=0;
heads=0;
while [ $tails -lt 21 -a $heads -lt 21 ]
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
if [ $heads -gt $tails ]
then
	win=$(($heads-$tails))
	echo "Heads won by : "$win;
elif [ $heads -eq $tails ]
then
	echo "It's a tie";
else
	win=$(($tails-$heads));
	echo "Tails won by : "$win;
fi

echo "Heads Count :"$heads "and Tails count : " $tails;
