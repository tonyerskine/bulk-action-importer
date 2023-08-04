#! /bin/bash

set -e

for FILE in ./new/*
do 
    echo "sending $FILE"
    ./send-it.sh $FILE
    mv $FILE done/
    echo "sent $FILE"
done
