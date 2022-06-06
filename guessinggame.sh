#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {
	files=$( ls -1 | wc -l)

	while [[ $response -ne $files ]]
	do
	echo "How many files are in the current directory:"
	read response
		if [[ $response -eq $files ]]
		then
			echo "Congratulations! You won!"
		elif [[ $response -gt $files ]]
		then
			echo "Too high! Try again"
		else
			echo "Too low, try again"
		fi
	done
}

guessinggame
