#!/bin/bash

echo -n "Enter the total memory available (in Bytes): "
read ms
echo -n "Enter the block size (in Bytes): "
read bs
nob=$((ms/bs))
ef=$((ms-nob*bs))
echo -n "Enter the number of processes: "
read n
for((i=0;i<n;i++)); do
  echo -n "Enter memory required for process $((i+1)): "
  read mp[$i]
done
echo "No. of Blocks available in memory: $nob"
echo -e "\nPROCESS\tMEMORY REQUIRED\tALLOCATED  INTERNAL FRAGMENTATION"
p=0
tif=0
for((i=0;i<n && p<nob;i++)); do
  echo -n "$((i+1))          ${mp[$i]}"
  if [ ${mp[$i]} -gt $bs ]; then
    echo -e "\t\tNO\t   ---"
  else
    echo -e "\t\tYES\t     $((bs-mp[$i]))"
    tif=$((tif+bs-mp[$i]))
    p=$((p+1))
  fi
done
if [ $i -lt $n ]; then
  echo "Memory is Full, Remaining Processes cannot be accomodated"
fi
echo -e "\nTotal Internal Fragmentation is $tif"
echo "Total External Fragmentation is $ef"
