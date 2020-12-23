#! /bin/bash -x

isFullTime=1
isPartTime=2
wagePerHr=20

for ((day=1; day<=20; day++))
do
	empCheck=$((RANDOM%3))
	case $empCheck in
		 $isFullTime)
			empHrs=8 ;;
		 $isPartTime)
			empHrs=4 ;;
	 	*)
			empHrs=0 ;;
	esac

	salary=$(( $empHrs * $wagePerHr ))
	totalSalary=$(( $totalSalary + $salary ))

done

