#!/bin/bash
#with openbabel convert pdb 2 mol2 files

# Loop through all .pdb files in the current directory
for file in *.pdb; do
  # Extract the base name of the file (without the extension)
  base_name=$(basename "$file" .pdb)
  echo $base_name
  # Construct the output file name
  output_file="${base_name}.mol2"

  # Run the obabel command on the file
  obabel -i pdb "$file" -O "$output_file"

  echo "Processed $file into $output_file"
done
