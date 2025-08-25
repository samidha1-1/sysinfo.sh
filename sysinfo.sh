#!bin/bash

#"System Info Fetcher Show OS name, kernel version, uptime, CPU, memory, and disk usage. Can be run with ./sysinfo.sh."

echo "================================================================"
echo                    "SYSTEM INFORMATION"
echo "================================================================"

#OS NAME 
echo "OS Name"
cat /etc/os-release | grep "NAME=|VERSION=" | head -n 2

echo "================================================================"

#KERNEL VERSION
echo "kernel version "
uname -r

echo "================================================================"

#SYSTEM UPTIME
echo "system uptime"
uptime -p

echo "================================================================"

#CPU INFO 
echo "cpu info"
lscpu | grep -e "Model name" 

echo "================================================================="

#MEMORY USAGE
echo "memory usage"
free -h

echo "================================================================="

#DISK USAGE
echo "disk usage"
df -h 

echo "================================================================="

