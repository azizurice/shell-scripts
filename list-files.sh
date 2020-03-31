#!/bin/bash

files=/Users/user/dev/*
i=0

for file in $files
do
	i=$((i+1))
  echo -e $(basename $file) 
  echo 
done
echo $i


