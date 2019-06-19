# This file processes all *.pdb files in the specified directory 
# and combines the data rows that start with ATOM together into one CSV file
# called combined_pdb.csv in the same directory


# where is the data we want to process
data_directory <- "../pdb/"

# An empty vector to save the output data lines to
output_lines <- c()

# process each file in the pdb directory that has a .pdb extension
for (pdbfilename in list.files(data_directory, pattern="*.pdb")) {
  
  # read the lines in the file into a vector
  # note we need to add the directory to the filename (paste concatenates)
  lines <- readLines(file.path(data_directory, pdbfilename))
  
  # create variable to save data we want to capture
  molecule_name <- NA
  
  # examine each line to find what we want
  for (line in lines) {
    
    # extract name of the molecule
    if (startsWith(line, "COMPND")) {
      
      # Remove "COMPND" from the line
      # Remove white spaces from beginning and end of what's left
      molecule_name <- trimws(sub("COMPND", "", line))
      
      # add quotes around the molecule name because it might contain a comma
      molecule_name <- paste0('"', molecule_name, '"')
      
    } else if (startsWith(line, "ATOM")) {
      
      # split line into components
      processed <- unlist(strsplit(line, " +"))
      
      # some files have   1.00  0.00 at the end of the data lines
      # remove these last two items because they aren't needed
      if (endsWith(line, "  1.00  0.00")) {
        processed <- processed[1:(length(processed)-2)]
      }
        
      # change spaces in the line to commas
      processed <- paste(processed, collapse=",")
      
      # add filename and compound name
      processed <- paste(c(pdbfilename, molecule_name, processed), collapse=",")

      # add the line to the output
      output_lines <- c(output_lines, processed)
    }
  }
}
 
# write output to file 
cat(output_lines, file=file.path(data_directory, "combined_pdb.csv"), sep="\n")
