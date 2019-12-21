#!/bin/bash -x

echo "Welcome To EmployeeWage Simulation"

#CONTANT
WAGE_PER_HOUR=20
PART_TIME_HOUR=4
FULL_TIME_HOUR=8
PART_TIME_EMP=0
FULL_TIME_EMP=1
DAYS_PER_MONTH=20

checkAttendence=$(( RANDOM%2+1 ));

if [[ $checkAttendence -eq 1 ]]
then
	echo "Employee Present"
	
	partOrFullTimeEmp=$(( RANDOM%2 ))
	
	case $partOrFullTimeEmp in
	$PART_TIME_EMP ) dailyWage=$(( WAGE_PER_HOUR * PART_TIME_HOUR ))
			monthWage=$(( dailyWage * DAYS_PER_MONTH ))
			echo "Part time hour wage:" $monthWage;;
	$FULL_TIME_EMP ) dailyWage=$(( WAGE_PER_HOUR * FULL_TIME_HOUR ))
			monthWage=$(( dailyWage * DAYS_PER_MONTH ))
			echo "Full time hour wage:" $monthWage;;
	esac
else
	echo "Employee Absent"
fi

