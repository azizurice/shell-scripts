#!/bin/bash
#Given three integers (, , and ) representing the three sides of a triangle, identify whether the triangle is Scalene, Isosceles, or Equilateral.

#How to run: enter three sides of the triable as arguments. e.g. ./triable.sh 2 3 5 

side1="${1}"
side2="${2}"
side3="${3}"

echo "Sides of triangle are: ${side1} ${side2} ${side3}"
