#!/bin/bash
echo
echo --- Memory stats ----
free -h | grep "total"
free -h | grep "Mem"