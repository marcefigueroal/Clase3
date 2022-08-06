#!/bin/bash

texto="$1"

mkdir foo
cd foo
mkdir dummy
cd dummy/
touch file1.txt
touch file2.txt
cd ..
mkdir empty

if [ -z "$1" ]
then 
    echo "Que me gusta bash!!!!" >> dummy/file1.txt
else 
    echo "$1" >> dummy/file1.txt
fi

cat dummy/file1.txt >> dummy/file2.txt
mv dummy/file2.txt empty/