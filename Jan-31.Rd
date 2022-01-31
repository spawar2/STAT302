# Author: Pawar, Date: Jan 31 2022, Purpose: Analyze National COVID dataset

# Set working directory to the file path
setwd("/Users/pawar/Desktop")

# Read the csv file in R
data <- read.csv("national-history.csv", header = TRUE)

# Plotting the data with ggplot2

# Create a scatter plot on "death" & "onVentilatorCurrently" in R without using any external library
plot(data$death, data$onVentilatorCurrently)

# Change the axis labels: X axis "Number of Deaths", Y axis "Patients on Ventilator"
plot(data$death, data$onVentilatorCurrently, xlab="Number of Deaths", ylab="Patients on Ventilator")

# Remove the scientific notation and replot X scale.
# Option 1
format(data$death, scientific=F)  # Introduces NA's 

# Option 2
options(scipen=999)

# Plot a scatter plot using external library ggplot2
library(ggplot2)
ggplot(data, aes(death, onVentilatorCurrently, colour = states)) + geom_point()

	















