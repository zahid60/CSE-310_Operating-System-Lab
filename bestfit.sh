#!/bin/bash

read -p "Enter the number of blocks: " num_blocks
read -p "Enter the number of files: " num_files


declare -a block_sizes
declare -a block_allocation


for ((i=1; i<=num_blocks; i++)); do
  read -p "Block $i: " size
  block_sizes[$i]=$size
  block_allocation[$i]=0
done

declare -a file_sizes
declare -a file_allocation

for ((i=1; i<=num_files; i++)); do
  read -p "File $i: " size
  file_sizes[$i]=$size
  file_allocation[$i]=0
done


allocate_memory() {
  local file_index=$1
  local best_fit_index=-1

  for ((i=1; i<=num_blocks; i++)); do
    if [[ ${block_allocation[$i]} -eq 0 && ${block_sizes[$i]} -ge ${file_sizes[$file_index]} ]]; then
      if [[ $best_fit_index -eq -1 || ${block_sizes[$i]} -lt ${block_sizes[$best_fit_index]} ]]; then
        best_fit_index=$i
      fi
    fi
  done

  if [[ $best_fit_index -ne -1 ]]; then
    block_allocation[$best_fit_index]=$file_index
    echo "Allocated File $file_index of size ${file_sizes[$file_index]} to Block $best_fit_index of size ${block_sizes[$best_fit_index]}"
  else
    echo "Unable to allocate memory for File $file_index of size ${file_sizes[$file_index]}"
  fi
}

for ((i=1; i<=num_files; i++)); do
  allocate_memory $i
done

