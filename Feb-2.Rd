# Author: Pawar, Date: Feb 2, 2022, Purpose: Generate different types of plots using ggplot library

# Set working directory 
setwd("/Users/pawar/Desktop")

# Read in the csv file 
data <- read.csv("national-history.csv", header = TRUE)

# Make a bar plot using library ggplot
library(ggplot2)

# Selecting first 10 rows from data and storing it into a new data frame called data2
data2 <- data[1:10,]

# Plotting on data2
p<-ggplot(data=data2, aes(x=death, y=onVentilatorCurrently)) + geom_bar(stat="identity")

# Try omiting NA's from dataframe
data3 <- na.omit(data)

# Plotting on data3
p<-ggplot(data=data3, aes(x=death, y=onVentilatorCurrently)) + geom_bar(stat="identity")

# Adding colors to the bar's
ggplot(data=data3, aes(x=death, y=onVentilatorCurrently)) +
geom_bar(stat="identity", fill="red")








