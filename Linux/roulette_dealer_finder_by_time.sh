#!/bin/bash

awk '{print $1,$2,$5,$6}' ../Dealer_Analysis/"$1"_Dealer_schedule | grep $2 | grep $3

echo "parameter1 (Enter four digit  DATE): Your value: " $1
echo "parameter2 (Enter a time (08:00:00): Your value: " $2
echo "parameter2 (Enter AM/PM): Your value: " $3
echo ../Dealer_Analysis/"$1"_Dealer_schedule 
