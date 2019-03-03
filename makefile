#!/usr/bin/env bash
# File: makefile

README.md: guessinggame.sh
	echo "The title of this project is guessinggame.sh." > README.md
	echo "" >> README.md
	echo "The makefile for this program was last run on the following date:" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "guessinggame.sh contains the following number of lines of code:" >> README.md
	egrep ^[^\n#] guessinggame.sh | wc -l >> README.md		
