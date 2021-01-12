#!/bin/bash -x 

#constant
EMP_RATE_PER_HR=20
FULL_TIME=1
PART_TIME=2

	empCheck=$(( RANDOM%3 ))
	case $empCheck in
		$FULL_TIME)
		echo empHrs=8
		echo dailyWage=$(( $EMP_RATE_PER_HR*$FULL_TIME ))
			;;
		$PART_TIME)
		        echo empHrs=4
			echo dailyWage=$(( $EMP_RATE_PER_HR*$PART_TIME ))
			;;
		*)
			echo empHrs=0
			;;
	esac
