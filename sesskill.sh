#!/bin/bash
#Check if user has entered a parameter to the program
if [[ -z "$1" ]]; then
	echo Please specify a session
	exit
fi

#Fetch the parameter
targetTTY=$1

#Magic: Search for the shell process of the session and attempt to kill it
targetPID="$(ps -ef | awk -v var="$targetTTY" '($6 == var) && ($8 ~ /sh$/) {printf("%s", $2); exit(0)}')"

#If session is not found in ps -ef
if [[ -z "$targetPID" ]]; then
	echo Session not found. Please specifiy a valid running session
	exit
fi

kill -9 $targetPID 2> /dev/null

#If user doesn't have sufficient rights to perform the action
if [ $? -ne 0 ]; then
	echo Insufficient rights
fi
