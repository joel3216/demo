#! /bin/bash -x

isFullTime=1
isPartTime=2
wagePerHr=20
maxHrs=50
maxDays=20

function getEmpHrs(){
	local empCheck=$1
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

function wageCalculation(){
local empHrs=$1
local wagePerHr=$2
salary=$(( $empHrs*$wagePerHr ))
echo $salary
}

while [[ $empHrs -le $maxHrs && $day -le $maxDays ]]
do
	empCheck=$((RANDOM%3))
	day=$(( $day+1 ))
	empHrs=$( getEmpHrs $empCheck )
	salary=$(( $empHrs*$wagePerHr ))
	dailyWage[$day]=$( wageCalculation $empHrs $wagePerHr )
	totalSalary=$(( $totalSalary+$salary ))

done

echo ${dailyWage[@]}
