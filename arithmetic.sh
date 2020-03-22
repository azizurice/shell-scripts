#!/bin/bash


#Given two integers,  and , find their sum, difference, product, and quotient.

read X
read Y
SUM=$((X + Y))
SUBT=$((X-Y))
PROD=$((X*Y))
DIV=$((X/Y))
echo "$SUM"
echo "$SUBT"
echo "$PROD"
echo "$DIV"
