#!/usr/bin/env bash
# File: guessinggame.sh

function victory {
	echo ""
	echo "$1 is the correct answer!"
	echo "You win nothing!"
	echo "Goodbye."
}

files=$(ls -l | egrep ^- | wc -l)
echo ""
echo "Now we are going to play a little game"
echo "You are going to guess how many files are in the current directory and I am going to tell you if you are right or wrong."
echo ""
echo "What is your guess?"
read guess
while [[ $guess -ne $files ]]
do
	if [[ $guess -gt $files ]]
	then
		echo ""
		echo "Your guess is too big.  Guess again."
		read guess
	elif [[ $guess -lt $files ]]
	then
		echo ""
		echo "Your guess is too low.  Guess again."
		read guess
	fi
done

victory $guess

