# Bar plot of Obese Countries

pop_perc <-c("11.4-20.45", "20.45 - 29.45", "29.45 - 38.45", "38.45 - 47.75", "47.45 - 56.45", "56.45 - 65.45", "65.45 - 74.45", "74.45 - 83.45")
num_count <- c(29, 13, 4, 0, 2, 1, 0, 1)


obese_vector <- data.frame(Category = pop_perc, Frequency = num_count)


barplot(num_count,
        main = "Frequency of Rate for Most Overweight Countries in the World",
        horiz = FALSE,
        xlab = "Percent of Population that is Obese",
        ylab = "Number of Countries",
        ylim =c(0, 30),
        names.arg=pop_perc)
text(num_count, labels =pop_perc, cex=1.2, pos=4, col="red")

# Skewness

obese_vector <- c(rep(29, 11), rep(13, 29), rep(4, 29), rep(0, 29), rep(2, 29), rep(1, 29), rep(0, 29), rep(1, 29))

library("moments")
skewness(obese_vector)


# Mean

percent_midpoints <- c(15.925, 24.95, 33.95, 43.1, 51.95, 61.95, 69.95, 78.95)
num_countries <- c(29, 13, 4, 0, 2, 1, 0, 1)

weighted_mean <- sum(percent_midpoints * num_countries) / sum(num_countries)
print(weighted_mean)

# Standard Deviation

deviation <- vector("numeric", 8)
sq_deviation <- vector("numeric", 8)
sum_sq_deviation = 0
# Measures of dispersion
for (i in 1:8) {
  deviation[i] <- percent_midpoints[i] - mean(percent_midpoints)
  sq_deviation[i] <- deviation[i]^2
  sum_sq_deviation <- sq_deviation[i] + sum_sq_deviation
}

print(paste("The sum of squared deviations from mean is ", sum_sq_deviation))
print(paste("The sample variance is ", sum_sq_deviation/8))
print(paste("The sample variance using var() function is ", var(percent_midpoints)))
print(paste("The sample standard deviation is ", sqrt(sum_sq_deviation/8)))
print(paste("The sample standard deviation using sd() is ", sd(percent_midpoints)))



# Calculate the weighted standard deviation
squared_diff <- (percent_midpoints - weighted_mean)^2 * num_countries
sum_squared_diff <- sum(squared_diff)
weighted_sd <- sqrt(sum_squared_diff / sum(num_countries))
print(weighted_sd)

library("moments")

# Simulation Data
X1 <- c(rnorm(30, 5, 2))

# X2 is the second sample
X2 <- c(rnorm(300, 5, 2))

writeLines(paste("==== X1, Sample 1 ====\nMean: ",
          round(mean(X1),4),
          "\nSD: ",
          round(sd(X1),4),
          "\nMedian: ",
          round(median(X1),4),
          "\nSkew: ", 
          round(skewness(X1),4),
          "\nKurtosis: ",
          round(kurtosis(X1),4)))

writeLines(paste("==== X2, Sample 2 ====\nMean: ",
          round(mean(X2),4),
          "\nSD: ",
          round(sd(X2),4),
          "\nMedian: ",
          round(median(X2),4),
          "\nSkew: ",
          round(skewness(X2),4),
          "\nKurtosis: ",
          round(kurtosis(X2),4)))

# Sample 1 histogram
h <- hist(X1, main="Histogram of Sample of 30", 
           xlab="Sample 30", 
           border="blue", 
           col="green",
           xlim=c(-5,20),
           las=1, 
           breaks=14)

# Sample 2 histogram:
hist(X2, main="Sample of 300", 
     xlab="Sample 300", 
     border="blue", 
     col="green",
     xlim=c(-5,20),
     las=1, 
     breaks=14)

# Theroretical Mean and SD
# Define the x_bar vector
num_samp = 5000
samp_size = 300
x_bar <- vector("numeric", num_samp)
pop_mean = 5
pop_sd = 2

# Each x-bar is the mean of a random sample of size 50 drawn from a Normal(10, 5)
# We are generating 1000 X-bars (from 1000 samples) and storing them in the x-bar vector
for (i in 1:num_samp) {
  x_bar[i] = mean(rnorm(samp_size, pop_mean, pop_sd))
}

# Calculate the empirical mean
# Calculate the empirical standard deviation of x-bar (i.e., called standard error)
Exp_x_bar <- mean(x_bar)
stderr <- sd(x_bar)

writeLines(paste("\nThe Empirical Expected value of X-bar is: ",
          round(Exp_x_bar,4),
          "\nThe Theoretical Expected value of X-bar is: ",
          pop_mean,
          "\nThe Empirical Standard Error or standard deviation of X-bar is: ",
          round(stderr,4),
          "\nThe Theoretical Standard Error or standard deviation of X-bar is: ",
          round(pop_sd/sqrt(samp_size),4)))

