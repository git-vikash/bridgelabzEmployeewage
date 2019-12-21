#!/bin/bash -x

echo "Welcome To EmployeeWage Simulation"

#CONTANT
WAGE_PER_HOUR=20
PART_TIME_HOUR=4
FULL_TIME_HOUR=8

dailyWage=$(( WAGE_PER_HOUR * FULL_DAY_HOUR ))

checkAttendence=$(( RANDOM%2+1 ));

if [[ $checkAttendence -eq 1 ]]
then
	echo "Employee Present"
	echo "Daily wage:"$dailyWage
else
	echo "Employee Absent"
fi

