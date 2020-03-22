#!/bin/bash

#We provide you with expressions containing +,-,*,^, / and parenthesis. None of the numbers in the expression involved will exceed .
#Your task is to evaluate the expression and display the correct output rounding upto  decimal places.

read expression
#echo `printf "%.3f" $(($expression))`

echo $(echo "scale=3; (($expression))" | bc -l)


