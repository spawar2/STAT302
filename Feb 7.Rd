# Author: Pawar, Date: Feb 7 2022, Purpose: Performing Correlation analysis on National COVID dataset

# Set working directory to the file path
setwd("/Users/pawar/Desktop")

# Read the csv file in R
data <- read.csv("national-history.csv", header = TRUE)

# Perform the correlation analysis between "states" and "death"
library(ggpubr)

ggscatter(data, x = "states", y = "death", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "States", ylab = "Number of Deaths")
          
# Correlation without using library ggpubr

cor.test(data$states, data$death, method = "pearson")

library(corrplot)
data_2 <- data[1:20,]
data_matrix <- data_2[,2:5]
data_matrix <- as.matrix(data_matrix)
res <- cor(data_matrix)
corrplot(res, type = "upper", order = "hclust", tl.col = "black", tl.srt = 45)



