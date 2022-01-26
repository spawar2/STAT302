# Author: Pawar, Date: Jan 26 2022, Purpose: National COVID dataset link

# Set working directory to the file path
setwd("/Users/pawar/Desktop")

# Read the csv file in R
data <- read.csv("national-history.csv", header = TRUE)

# dim() Function checks the dimensions of your dataframe 
dim(data)

# Check names of columns in the data frame
names(data)

# Example, I want to select 2 columns named "date", "positive" and make a new data frame named "data2".
data2 <- data.frame(data$date, data$positive)

# Check the summary stats (mean, median, max, min, missing values/NA's') of your data
summary(data)

Data types:
# Numerical value: 0, 1, 2, ..
# Doubles/floats: 0.0, 1.0, 2.0, ...
# Characters: A, B, C, ...
# Strings: ABCD, EFGH, ...

# Checking the data structure
is.data.frame(data)
is.matrix(data)

# Checking the data type
is.numeric(data)
is.numeric(data$death)

# Checking the missing values
is.na(data$death)

# Extract elements of summary output
df <- data.frame(unclass(summary(data)))
df[6,2]







