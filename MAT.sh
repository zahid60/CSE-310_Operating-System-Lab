#!/bin/bash

read -p "Enter the number of Blocks: " num_blocks


declare -a block_sizes
declare -a block_allocation

# Read block sizes
for ((i=1; i<=num_blocks; i++)); do
  read -p "Block $i size: " size
  block_sizes[$i]=$size
  block_allocation[$i]=0
done

read -p "Enter the number of processes: " num_processes


declare -a process_memory
declare -a process_allocation


for ((i=1; i<=num_processes; i++)); do
  read -p "Enter memory required for process $i: " memory
  process_memory[$i]=$memory
  process_allocation[$i]=0
done


allocate_memory() {
  local process_index=$1

  for ((i=1; i<=num_blocks; i++)); do
    if [[ ${block_allocation[$i]} -eq 0 && ${block_sizes[$i]} -ge ${process_memory[$process_index]} ]]; then
      # Allocate the block to the process
      block_allocation[$i]=$process_index
      echo "Allocated Block $i of size ${block_sizes[$i]} to Process $process_index of memory requirement ${process_memory[$process_index]}"
      return
    fi
  done


  echo "Unable to allocate memory for Process $process_index of memory requirement ${process_memory[$process_index]}"
}

for ((i=1; i<=num_processes; i++)); do
  allocate_memory $i
done

