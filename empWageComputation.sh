#!/bin/bash -x 

#consants
EMP_RATE_PER_HR=20
IS_FULL_TIME=1
IS_PART_TIME=2
NUM_OF_WORKING_DAYS=20
MAX_HRS_IN_MONTH=50

#variable
totalEmpHrs=0
totalWorkingDays=0

function getWorkHrs(){
	local empCheck=$1
	case $empCheck in
		$IS_FULL_TIME)
			empHrs=8
			;;
		$IS_PART_TIME)
			empHrs=4
			;;
		*)
			empHrs=0
			;;
		esac
		echo $empHrs
}
function calDailywage() {
	local workHrs=$1
	wage=$(($empHrs*$EMP_RATE_PER_HR))
	echo $wage
}
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_OF_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	empHrs="$( getWorkHrs $empCheck )"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	dailyWage[$totalWorkingDays]=$(calDailywage $empHrs)
done
totalWage[1]=$(($totalEmpHrs*$EMP_RATE_PER_HR))
echo "Day:"${!dailyWage[@]}
echo "Daily Wage:"${dailyWage[@]}
echo "TotalWage:"${totalWage[@]}


