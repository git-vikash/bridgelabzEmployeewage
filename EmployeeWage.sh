#!/bin/bash -x

echo "Welcome To EmployeeWage Simulation"

checkAttendence=$(( RANDOM%2+1 ));

if [[ $checkAttendence -eq 1 ]]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi
