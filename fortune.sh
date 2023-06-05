#!/bin/bash
# Program to tell a persons fortune
echo -e "\n~~ Fortune Teller ~~\n"
RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
N=$(( $RANDOM % 6 ))
GET_FORTUNE() {
  # if not passed the first argument to the function
  if [[ ! $1 ]]
  then
    echo "Ask a yes or no question:"
  else
    echo "Try again. Make sure it ends with a question mark:"
  fi
  read QUESTION
}
# Call the function First run without any argument
GET_FORTUNE
# The RegEx \?$ looks if a string last character is equal to '?'
until [[ $QUESTION =~ \?$ ]]
do
  # Call the function for second time and beyond passing the argument 'again'
  GET_FORTUNE again
done
echo -e "\n${RESPONSES[$N]}"