#!/bin/bash

gpio mode 5 in
gpio mode 5 up

a=$(gpio read 5)
echo $a
while true
do
    until [ "$a" -eq 0 ]
    do
	
        a=$(gpio read 5)
	echo $a
        echo "waiting not pressed"
        sleep 2
    done
    
    until [ "$a" -eq 1 ]
    do	
        a=$(gpio read 5)
	echo $a
        echo "waiting pressed"
        sleep 2
    done
done
