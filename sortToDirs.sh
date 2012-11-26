#!/bin/bash

FILES=./images/* 
# Echo out all files in directory!
for f in $FILES
do
	dest=${f:9:10}
	f2=${f:9:15}
	cmd1="mkdir ./images/$dest"
	cmd2="mv $f ./images/$dest/$f2"
	echo $cmd1
	echo $cmd2
	$cmd1
	$cmd2
done
