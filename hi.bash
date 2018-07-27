#!/bin/bash
arg=$1
time=$2
greeting=''
if [ -z "$time" ]; then
time="3s"
fi

if [ -z "$arg" ]; then
arg='anonymous'
fi 

greeting="So your name is...$arg."
echo 'hello '"$greeting"
greeting="I see...you want to test this program $arg..."
echo "$greeting"

echo "hi:hello" | awk -F':' '{printf "Did you expect a %s or a %s?",$1,$2}'
sleep $time && echo  $'\n\nOkay then, hello!'
sleep $time && echo  $'\n\nHow do you do?'
sleep $time && echo $'\nNice to meet you!'
sleep $time && echo $'\nLemme say another random thing to you.'

sleep $time && echo $'\nBye, '"$arg"'!!!'
