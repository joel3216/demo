#! /bin/bash -x

isFullTime=1
isPartTime=2
empCheck=$((RANDOM%3))
wagePerHr=20

if [ $isFullTime -eq $empCheck ]
then
	empHrs=8
elif [ $isPartTime -eq $empCheck ]
then
	empHrs=4
else
	empHrs=0
fi

salary=$(( $empHrs * $wagePerHr))


