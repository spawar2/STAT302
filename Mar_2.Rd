# Author: Pawar; Date: Mar 2, 2022; Purpose: To generate Pie charts and a Volcano plot

# Create a list of elements called "slices" as follows
slices <- c(10, 12,4, 16, 8)

# Create a list of labels called "labels" as follows
labels <- c("US", "UK", "Australia", "Germany", "France")

# Following is function to generate a pie chart
pie(slices, labels = labels, main="Pie Chart of Countries", angle=45, clockwise = FALSE)

# Make Volcano plot: It is usually used in gene expression analysis to find significant/important genes in your samples. And it is usually plotted on 2 columns: A p value and log fold change

# Set working ditrectory to my Desktop
setwd("/Users/pawar/Desktop")

# Getting a sample data from git as follows:
download.file("https://raw.githubusercontent.com/biocorecrg/CRG_RIntroduction/master/de_df_for_volcano.rds", "de_df_for_volcano.rds", method="curl")

# Read the downloaded data in R
tmp <- readRDS("de_df_for_volcano.rds")

# Convert to complete cases as follow:
de <- tmp[complete.cases(tmp), ]

# Import library
library(ggplot2)

# Following to generate a volcano plot
ggplot(data=de, aes(x=log2FoldChange, y=pvalue)) + geom_point()

