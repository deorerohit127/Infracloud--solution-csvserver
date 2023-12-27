#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <start_index> <end_index>"
  exit 1
fi

start_index=$1
end_index=$2

if [ "$start_index" -gt "$end_index" ]; then
  echo "Error: Start index must be less than or equal to end index."
  exit 1
fi

echo "Generating CSV file..."

# Clear existing content in the file or create a new file
echo -n > inputFile

for ((i = start_index; i <= end_index; i++)); do
  # Generate a random number between 1 and 100
  random_number=$((RANDOM % 100 + 1))
  
  # Append the entry to the CSV file
  echo "$i, $random_number" >> inputFile
done

echo "CSV file generated successfully."

