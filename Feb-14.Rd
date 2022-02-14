#Author: Pawar, Date: Feb 14, 2022, Purpose: To generate heatmaps on some sample datasets.

# Load a sample data called "mtcars"
df <- mtcars

# Check first few lines of loaded data
head(df)
dim(df)

df <- scale(df)
# Generate a heatmap using default R function
heatmap(df, scale = "row")	

# Used a function called "grep"
df2 <- df[grep("^Merc", row.names(df)),] 
df3 <- df[grep("^Fiat", row.names(df)),] 
df4 <- rbind(df2, df3)
heatmap(df4, scale = "row")




