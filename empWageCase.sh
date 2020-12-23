#! /bin/bash -x

isFullTime=1
isPartTime=2
empCheck=$((RANDOM%3))
wagePerHr=20

case $empCheck in
	 $isFullTime)
		empHrs=8 ;;
	 $isPartTime)
		empHrs=4 ;;
	 *)
		empHrs=0 ;;
esac

salary=$(( $empHrs * $wagePerHr ))


