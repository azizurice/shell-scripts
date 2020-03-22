#!/bin/bash
#Get all five answers and show the percentage of correct answer

declare -a questions
declare -a answers

echo "Enter y or n"
questions[0]='Canada has 10 provinces and 3 territories: '
questions[1]='Canada is geographically the largest country in the world: '
questions[2]='Capital city of Canada is Toronto: '
questions[3]='Muzmatch has the most handsome Muslim men: '
questions[4]='Montreal is the least preferable city in Canada: '

answers[0]='y'
answers[1]='n'
answers[2]='n'
answers[3]='y'
answers[4]='y'

total=0
j=0

for i in "${questions[@]}"
do
  read -p ${i} a
  a=$( echo ${a} | tr '[:upper:]' '[:lower:]' )
  if [[ "${a}" == "${answers[$j]}" ]]
  then
    total=$(( total+1 ))
  fi
  j=$(( j+1 ))
done

echo "Your score is: " "$(( $total*100 / 5 ))""%"
