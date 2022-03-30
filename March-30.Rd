# Author: Pawar, Date: March 30, Purpose: To generate normal distribution plot for dummy data

# Generate dummy data 
x <- seq(-10, 10, by = .1)

# Use dnorm() with some mean and standard deviation values
y <- dnorm(x, mean = 2.5, sd = 0.5)

# Plot x and y to generate a scatter plot for normal distribution curve
plot(x,y, col="blue")


# Adding legend to this data
legend("topleft", legend=c("Dummy Data"), col=c("blue"), lty=3, cex=0.8)
legend("topleft", legend=c("Dummy Data"), col=c("blue"), pch=3, cex=0.8)