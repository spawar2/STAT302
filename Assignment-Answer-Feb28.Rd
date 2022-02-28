# Author: Pawar, Date Feb 28, Purpose: Answers to In class Assignement no 2

# Set working directory
setwd("/Users/pawar/Desktop")

# read data file into a variable called data
data <- read.csv("ddf--entities--geo--country.csv", header = TRUE)

# Subselect the 2 columns "iso3166_1_numeric" and "latitude"
data2 <- data[,c(8, 11)]

# Getting rid of NA values using following function
data2 <- na.omit(data2)

# Correlation plot using library(ggpubr)
library(ggpubr)

ggscatter(data2, x = "iso3166_1_numeric", y = "latitude", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson")

# Load the library RColorBrewer
library("RColorBrewer")

data3 <- data[,c(1, 8, 11)]
data3 <- na.omit(data3)
row.names(data3) <- data3[,1]
data3 <- data3[,-1]

# Scale data2
df <- scale(data3)

# Generate a color palette
col <- colorRampPalette(brewer.pal(10, "RdYlBu"))(256)

# Use function heatmap to generate a heatmap
heatmap(df, scale = "none", col =  col, Colv=NA, Rowv=NA)

library("pheatmap")

pheatmap(df, cutree_rows = 4, fontsize_row=5, fontsize_col=7)