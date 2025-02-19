#! /bin/bash

age=18

if [ ${age} -eq 18 ] # -eq is the operator for equal
then
    echo "You are 18 years old"
else
    echo "You are not 18 years old"
fi

if [ ${age} -ne 18 ] # -ne is the operator for not equal
then
    echo "You are not 18 years old"
else
    echo "You are 18 years old"
fi

if [ ${age} -gt 18 ] # -gt is the operator for greater than
then
    echo "You are older than 18 years old"
else
    echo "You are not older than 18 years old"
fi

if [ ${age} -lt 18 ] # -lt is the operator for less than
then
    echo "You are younger than 18 years old"
else
    echo "You are not younger than 18 years old"
fi

if [ ${age} -ge 18 ] # -ge is the operator for greater than or equal
then
    echo "You are 18 years old or older"
else
    echo "You are not 18 years old or older"
fi

if [ ${age} -le 18 ] # -le is the operator for less than or equal
then
    echo "You are 18 years old or younger"
else
    echo "You are not 18 years old or younger"
fi

if [ ${age} -lt 18 ] && [ ${age} -gt 10 ] # && is the operator for and
then
    echo "You are younger than 18 years old and older than 10 years old"
elif [ ${age} -ge 18 ] || [ ${age} -lt 20 ] # || or -o is the operator for or
then
    echo "You are between 18 and 20 years old"
else
    echo "You are not between 18 and 20 years old"
fi