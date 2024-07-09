# Specify the path to the zip file
zip_file <- "Employee_Profile.zip"

# Specify the directory where you want to extract the files
extract_to <- "Employee_Profile"

# Create the directory if it doesn't exist
if (!file.exists(extract_to)) {
  dir.create(extract_to)
}

# Unzip the contents of the zip file to the specified directory
unzip(zip_file, exdir = extract_to)

# List files extracted from the zip archive
extracted_files <- list.files(extract_to, full.names = TRUE)

# Display the contents of each extracted file (assuming they are CSVs)
for (file in extracted_files) {
  cat("Contents of", file, ":\n")
  print(read.csv(file))
}