#!/bin/bash
#Kezdődjön a móka!
WIDGET_CONTROL2=$WIDGET_CONTROL
#
if [ -z $WIDGET_CONTROL ]
    then
WIDGET_CONTROL2="mem,user"
else
    WIDGET_CONTROL2=$WIDGET_CONTROL
fi
echo WIDGET_CONTROL= $WIDGET_CONTROL
echo WIDGET_CONTROL2= $WIDGET_CONTROL2
declare -i mem
declare -i cpu
declare -i proc
declare -i user
declare -i disk
mem=0;cpu=0;proc=0;user=0;disk=0
if [[ $WIDGET_CONTROL2 =~ "mem" ]]
then
   mem=1
fi
if [[ $WIDGET_CONTROL2 =~ "cpu" ]]
then
   cpu=1
fi

if [[ $WIDGET_CONTROL2 =~ "proc" ]]
then
   proc=1
fi
if [[ $WIDGET_CONTROL2 =~ "user" ]]
then
   user=1
fi
if [[ $WIDGET_CONTROL2 =~ "disk" ]]
then
   disk=1
fi

while true; do
clear
echo Starting Widgets...
echo Press M,C,P,U or D keys to display/hide memory,CPU, process, user, disk stats
echo Press Q to exit.
echo mem= $mem CPU= $cpu proc= $proc user=$user disk= $disk
if [[ $mem = 1 ]]; then
    ./mem.sh
fi
if [[ $cpu = 1 ]]; then
    ./cpu.sh
fi

if [[ $proc = 1 ]]; then
    ./proc.sh
fi
if [[ $user = 1 ]]; then
    ./user.sh
fi
if [[ $disk = 1 ]]; then
    ./disk.sh
fi
read -t 2 -N 1 input
    if [[ $input = "q" ]] || [[ $input = "Q" ]]; then
# The following line is for the prompt to appear on a new line.
        echo
        break
    fi
    if [[ $input = "m" ]] || [[ $input = "M" ]]; then
     mem=1-$mem
    fi
    if [[ $input = "c" ]] || [[ $input = "C" ]]; then
     cpu=1-$cpu
    fi

if [[ $input = "p" ]] || [[ $input = "P" ]]; then
     proc=1-$proc
    fi

if [[ $input = "u" ]] || [[ $input = "U" ]]; then
     user=1-$user
    fi


if [[ $input = "d" ]] || [[ $input = "D" ]]; then
     disk=1-$disk
    fi

done
