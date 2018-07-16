all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# This is the guessing game!<br />" > README.md
	echo "`date`<br />" >> README.md
	echo "The number of lines in the guessinggame.sh file is:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
