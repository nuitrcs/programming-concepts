# make a package accessible
import os


# This file processes all *.pdb files in the specified directory
# and combines the data rows that start with ATOM together into one CSV file
# called combined_pdb.csv in the same directory


# where is the data we want to process
data_directory = "../pdb/"

# open an output file to write our results to
with open(os.path.join(data_directory, 'combined_pdb.csv'), 'w') as outputfile:

    # process each file in the pdb directory
    for pdbfilename in os.listdir(data_directory):

        # only process *.pdb files
        if pdbfilename.endswith(".pdb"):

            # open each file to process it
            with open(os.path.join(data_directory, pdbfilename)) as datafile:

                # create variable to save data we want to capture
                molecule_name = None

                # examine each line to find ones we want
                for line in datafile.readlines():

                    # extract name of the molecule
                    if line.startswith("COMPND"):

                        # Remove "COMPND" from the line
                        # Remove white spaces from beginning and end of what's left
                        molecule_name = line.replace("COMPND", "").strip()

                        # add quotes around the molecule name because it might contain a comma
                        molecule_name = '"' + molecule_name + '"'

                    elif line.startswith("ATOM"):  # good data lines

                        # split line into components
                        processed = line.split()

                        # some files have   1.00  0.00 at the end of the data lines
                        # remove these last two items because they aren't needed
                        if line.endswith("  1.00  0.00\n"):
                            processed = processed[:-2]

                        # change spaces in the line to commas
                        processed = ",".join(processed)

                        # add the line to the output
                        outputfile.write(pdbfilename + "," + molecule_name + "," + processed + "\n")