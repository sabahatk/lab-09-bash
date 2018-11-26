#!/bin/bash

gpio mode 5 in
gpio mode 5 up

a=$(gpio read 5)

    until [ "$a" -eq 0 ]
    do
	
        a=$(gpio read 5)
        echo "waiting not pressed"
        sleep 0.5
	clear
    done
    
    until [ "$a" -eq 1 ]
    do	
        a=$(gpio read 5)
        echo "waiting pressed"
        sleep 0.5
	clear
    done
    
echo "button released"
