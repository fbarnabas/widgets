#!/bin/bash
echo
echo ---- CPU stats ----
echo -ne "CPU "
cat /proc/cpuinfo | grep "model name"
cat /proc/cpuinfo | grep "cpu cores"
cat /proc/cpuinfo | grep "cpu MHz"