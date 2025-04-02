#! /bin/bash

# Simple random password generator

echo -e "This is a simple password generator \nPlease enter the lenght of your password"

read PASS_LEN

for p in $(seq 1 5); # loop that runs the sequence from 1 to 5 (do the loops 5 times)
do
	pass=$(openssl rand -base64 48 | cut -c1-${PASS_LEN}) #gets 48 char and then cuts until the password and then assigns that value to the variable pass
	echo $pass
done
