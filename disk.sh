#!/bin/bash
echo
echo ---- Disk stats ----
echo "Filesystem     1K-blocks    Used Available Use% Mounted on"
df | grep "/dev/sd"
