# Author: Pawar, Date: 03/07/2022, Purpose: Calculate linear regression analysis 

# Set working directory
setwd("/Users/pawar/Desktop")

# Read your data file
data <- read.csv("national-history.csv", header = TRUE)

# Use column "death" and "hospitalizedIncrease" for understanding relationship between patients hospitalized and patients dying.
relation <- lm(data$death~data$hospitalizedIncrease)

summary(relation)

# Regression looks at relationship, Also predict the future relationships....!!!
# Correlation looks at relationship

# How to plot the relationship similar to the correlation plot?

plot(data$death, data$hospitalizedIncrease,col = "blue",main = "Deaths & Patients Hospitalized Regression",
abline(lm(data$hospitalizedIncrease~data$death), col = "red"),cex = 1.3,pch = 16, xlab = "Deaths",ylab = "Patients Hospitalized")

# Next month, if I see there are 1000 deaths and 900 patients had hospitalized 






