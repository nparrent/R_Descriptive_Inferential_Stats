# Descriptive and Inferential Statistics THA
# Submisison for Natalie Parrent
Please provide your answers below. Remember, use full sentences. Be clear and detailed in your answers, providing justification and showing any intermediate steps.

## Overweight country data (4 pts.)
The most overweight countries in the world have rates that range from 11.4% to 74.6%. This data is summarized in the table below:

| Percent of Population | Number of Countries |
|:---:|:---:|
| 11.4 - 20.45 | 29 |
| 20.45 - 29.45 | 13 |
| 29.45 - 38.45 | 4 |
| 38.45 - 47.75 | 0 |
| 47.45 - 56.45 | 2 |
| 56.45 - 65.45 | 1 |
| 65.45 - 74.45 | 0 |
| 74.45 - 83.45 | 1 |

1. Create a bar plot of frequency (number of countries) with appropriate title and labels for the *x*- and *y*-axis. (1 pt.)

   ![Alt text](<assests/Img 1.JPG>)!

2. Characterize the skewness of the data using your plot. (1 pt.)

   The skewness is right skewed since the long tail is off to the left.

3. What percentage of countries have a percentage greater than or equal to 47.45% (1 pt.)
   * Hint: You will need to count the number countries.

   50 countries total with 4 greater than or equal to 47.45% 

   4/50 = .08 so 8% of countries have a percentage greater than or equal to 47.45%


4. Calculate the (approximate) sample mean. (1 pt.)

   The approxiate sample mean is 23.334

    ![Alt text](<assests/Img 2.JPG>)


5. Calculate the (approximate) sample standard deviation. (1 pt.)

   The approximate sample standard deviation is 22.136

   ![Alt text](<assests/Img 3.JPG>)

## Simulation data (6 pts.)
Use R for 5000 samples of size 30 and size 300 from X ~ Normal(5, 2) to answer the following questions.

  5000 samples
   n = 30
   X =
   n = 300
   u = 5
   sd =2

1. Construct a histogram of the sampling distribution of the sample mean (X-bar) for each sample size. (1 pt.)

   Histogram for Sample 30
   ![Alt text](<assests/img 4.JPG>)!

   Histogram for Sample 300
   ![Alt text](<assests/Img 5.JPG>)!


2. Calculate the mean and standard error (standard deviation of X-bar) for each sample size. Compare them with the theoretically predicted mean and standard deviation of X-bar. (1 pt.)

      The mean for Sample 30 is 5.35 and the SD is 1.797

      ![Alt text](<assests/Img 6.JPG>)

      THe mean for Sample 300 is  5.0542 and the SD is 1.972

      ![Alt text](<assests/Img 7.JPG>)!

      The theoretically predicted mean is 5 and the the theoretical SD is 0.3703

      ![Alt text](<assests/Img 8.JPG>)

3. In your own words, with reference to your results, explain the following:
   * The concept of sampling distribution of the estimator X-bar. (1 pt.)

      Estimator X-bar is a theoretical sampling distribution that acts as an estimator of the population mean μ. For the example above, we are looking at the distribution of 30 means to estimate the population mean. In the second sample set we are looking at a distribution of 300 means to estimate the population mean. 

   * The concept of standard error of the estimator X-bar. (1 pt.)

      The standard error for estimator X-bar is a measure to estimate how much the sample means are going to vary from one another. It estimates how variable the means are around a true population mean. In the above example the sample of 30 had a smaller SE compared to Sample 300.


   * What happens to the spread of values of the 5000 sample means, relative to the population mean of 5, as sample size increases from 30 to 300. Why does (or does not) this make sense? (1 pt.)

      The spread of values of the 5000 sample means decreases as the sample size is increased from 30 to 300. In the example above, the mean for sample size 30 was 5.35 and the sample mean for 300 was 5.05 which is closer to population mean of 5. This makes sense because as the sample size increases the distibution gets closer to the population mean. 

   * What happens to the collection of sample means, relative to each other, as sample size increases from 30 to 300. How is this related to the standard error? (1 pt.)

      The samples means will converge closer to each other and closer to the population mean as the sample size increases. It is related to the standard error because you are dividing by the square root of n and as n grows we have to divide by a bigger number so the standard error gets smaller. In the case above we divide by sqrt 30 for first sample and sqrt 300 for second sample so the SE is much lower for a sample of 300. 