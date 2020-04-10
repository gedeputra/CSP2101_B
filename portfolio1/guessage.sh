#!/bin/bash
#generating variable for age
#generating variable for the answer random number (1-90)
age=0
answer=$(( ( $RANDOM % 90 )  + 1 ))
#entering the loop for input console
until [ $age -eq $answer ]; do
#prompt the user to put the age until the answer is correct (input console)
read -p "Enter your age guess (between 1-90): " age
#if and elif statement to tell either the answer is too high or too low
if [ $age -gt $answer ];then
echo "Too high! Try again"
elif [ $age -lt $answer ];then
echo "Too low! Try again"
fi
done
#print the final message after completing the loop and print the correct answer as an output
#exit after the game finished
echo "You are correct! The answer is $answer congratulations!"
exit 0