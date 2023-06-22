#!/bin/bash

echo -n "Enter the total memory available (in Bytes): "
read ms
temp=$ms
i=0
n=0
while true; do
  echo -n "Enter memory required for process $((i+1)): "
  read mp[$i]
  if [ ${mp[$i]} -le $temp ]; then
    echo "Memory is allocated for Process $((i+1))"
    temp=$((temp-mp[$i]))
  else
    echo "Memory is Full"
    break
  fi
  echo -n "Do you want to continue (y/n)? "
  read ch
  if [ "$ch" != "y" ]; then
    break
  fi
  i=$((i+1))
  n=$((n+1))
done
echo "Total Memory Available: $ms"
echo -e "\nPROCESS\t MEMORY ALLOCATED"
for((i=0;i<n;i++)); do
  echo -e "\t$((i+1))\t ${mp[$i]}"
done
echo -e "\nTotal Memory Allocated: $((ms-temp))"
echo "Total External Fragmentation: $temp"
