#!/bin/bash

echo "Operatsion tizim: $(uname -s)"
echo "Hostname: $(hostname)"
echo "User: $(whoami)"
echo "Sana: $(date)"
echo "Disk holati:"
df -h
echo "RAM:"
top -l 1 | grep PhysMem
