#!/bin/bash
#Given three integers (, , and ) representing the three sides of a triangle, identify whether the triangle is Scalene, Isosceles, or Equilateral.

#  Scalene triangle : A scalene triangle is a triangle in which all three sides have different lengths
#  Isosceles triangle: An isosceles triangle is a triangle with (at least) two equal sides.
#  Equilateral triangle : an equilateral triangle is a triangle in which all three sides are equal.

#How to run: enter three sides of the triable as arguments. e.g. ./triable.sh 2 3 5 

#side1="${1}"
#$side2="${2}"
#side3="${3}"

#echo "Sides of triangle are: ${side1} ${side2} ${side3}"

read side1
read side2
read side3

if [ "${side1}" -eq "${side2}" ] && [ "${side2}" -eq "${side3}" ]
then
  echo "EQUILATERAL"
elif [ "${side1}" -eq "${side2}" ] || [ "${side2}" -eq "${side3}" ] || [ "${side3}" -eq "${side1}" ]
then
  echo "ISOSCELES"
else
  echo "SCALENE"
fi
