#! /bin/bash -x

isFullTime=1
isPartTime=2
wagePerHr=20
maxHrs=50
maxDays=20

function getEmpHrs(){
	local $empCheck=$1
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
	echo $empHrs

}

while [[ $empHrs -le $maxHrs && $day -le $maxDays ]]
do
	empCheck=$((RANDOM%3))
	day=$(( $day+1 ))

	empHrs=$( getEmpHrs $empCheck )
	salary=$(( $empHrs * $wagePerHr ))
	totalSalary=$(( $totalSalary + $salary ))

done

