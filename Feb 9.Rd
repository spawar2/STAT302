# Author: Pawar, Date: Feb 9 2022, Purpose: Performing Correlation analysis on National COVID dataset

# Set working directory to the file path
setwd("/Users/pawar/Desktop")

# Read the csv file in R
data <- read.csv("national-history.csv", header = TRUE)

library(corrplot)
data_2 <- data[1:20,]
data_matrix <- data_2[,2:5]
data_matrix <- as.matrix(data_matrix)
res <- cor(data_matrix)
corrplot(res, type = "full", order = "hclust", tl.col = "black", tl.srt = 45)

install.packages("PerformanceAnalytics",  repos=NULL)
library("PerformanceAnalytics")
chart.Correlation(res, histogram=TRUE, pch=19)

# Heatmaps?

