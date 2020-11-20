#!/bin/bash
echo
echo ---- Process stats ----
echo -ne "Number of running processes: "
ps -e | wc -l