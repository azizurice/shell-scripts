#!/bin/bash

# array varibable
declare -a questions
declare -a answers

questions[0]="Ottawa is the capital city of Canada"
questions[1]="Canada is the largest country in the world"
questions[2]="2+2=4"

answers[0]="y"
answers[1]="n"
answers[2]="y"

score=0
k=0
for q in "${questions[@]}" 
    do
	read -p "${q} :"  ans    
	ans=$( echo ${ans} | tr [:upper:] [:lower:])
	if [[ "${ans}" == "$answers[$k]" ]]
	   then	
		echo $q
	fi
	k=$((k+1))
	
    done


