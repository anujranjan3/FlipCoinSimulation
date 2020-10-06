#!/bin/bash -x

tails=0;
heads=0;

simulator () {
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
echo $heads $tails;
}

tieSimulator () {
	tiediff=$(($heads-$tails));
	tiediff1=$(($tails-$heads));
	while [ $tiediff -eq 2 -a tiediff1 -eq 2 ]
	do
	simulator $heads $tails;
	done
}
checker () {
if [ $heads -gt $tails ]
then
	win=$(($heads-$tails))
	echo "Heads won by : "$win;
elif [ $heads -eq $tails ]
then
	echo "It's a tie";
	tieSimulator $heads $tails;
else
	win=$(($tails-$heads));
	echo "Tails won by : "$win;
fi
}

simulatorMain () {
	simulator;
	checker $heads $tails;
echo "Heads Count :"$heads "and Tails count : " $tails;
}

simulatorMain;
