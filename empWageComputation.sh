#!/bin/bash -x

empRatePerHr=20
isFullTime=1
isPartTime=2
totalSalary=0


	empCheck=$(( RANDOM%3 ))
	case $empCheck in
		$isFullTime)
		   echo	empHrs=8
			;;
		$isPartTime)
		    echo empHrs=4
			;;
		*)
			echo empHrs=0
			;;
	esac
salary=$(($empHrs*$empRatePerHr))



