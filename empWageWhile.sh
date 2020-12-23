#! /bin/bash -x

isFullTime=1
isPartTime=2
wagePerHr=20
maxHrs=50
maxDays=20

while [[ $empHrs -le $maxHrs && $day -le $maxDays ]]
do
	empCheck=$((RANDOM%3))
	day=$(( $day+1 ))

	case $empCheck in
		 $isFullTime)
			empHrs=$(($empHrs +8))
				 ;;
		 $isPartTime)
			empHrs=$(($empHrs +4))
				 ;;
	 	*)
			empHrs=$(($empHrs +0))
				 ;;
	esac

	salary=$(( $empHrs * $wagePerHr ))
	totalSalary=$(( $totalSalary + $salary ))

done

