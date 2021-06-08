#!/bin/bash

echo "Today's date:"
date
echo ""
echo -e "Uname info: $(uname)\n"
echo -e "IP Address: $(ip addr | grep inet | tail -1 | awk '{print $4}')\n"
echo -e "Hostname: $(hostname -s)\n"
echo "DNS Servers: "
cat /etc/resolv.conf
echo ""
echo "Memory Info:"
free
echo ""
echo "CPU Info:"
lscpu | grep CPU
echo ""
echo  "Disk Usage:"
df -H | head -2
echo ""
echo "Who is logged in: $(who)"
