[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/IDMaYAQq)
# Descriptive and Inferential Statistics THA
In this assignment you will apply your knowledge and skills of discrete distributions.

Be clear and detailed in your answers, providing justification and showing any intermediate steps. Simply providing the final answer will *NOT* receive a grade.

To submit, please perform the following:
1. Save a script file for R with the following name: `tha_descriptive_lastname_firstname.R` where lastname is your last name and firstname is your first name.
1. Answer questions in `submission.md`, linking any screenshots as necessary.
1. Push your assignment to GitHub.

Use R to answer the following questions. Please copy the question and paste it in R. Be sure to comment out the question. This will allow me to identify the code you used to answer the question. For example:

```R
# Q1. Construct a histogram with appropriate title and labels for the *x*-axis and *y*-axis.
```

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

1. Create a bar plot of frequency (number of countries) with appropriate title and labels for the *x*- and *y*-axis. Save it in the folder assets and link it in [submission.md](/submission.md) (1 pt.)
2. Characterize the skewness of the data using your plot. (1 pt.)
3. What percentage of countries have a percentage greater than or equal to 47.45% (1 pt.)
   * Hint: You will need to count the number countries.
4. Calculate the (approximate) sample mean. (1 pt.)
5. Calculate the (approximate) sample standard deviation. (1 pt.)

## Simulation data (6 pts.)
Use R for 5000 samples of size 30 and size 300 from X ~ Normal(5, 2) to answer the following questions.
1. Construct a histogram of the sampling distribution of the sample mean (X-bar) for each sample size. Save it in the folder assets and link it in [submission.md](/submission.md) (1 pt.)
2. Calculate the mean and standard error (standard deviation of X-bar) for each sample size. Compare them with the theoretically predicted mean and standard deviation of X-bar. (1 pt.)
3. In your own words, with reference to your results, explain the following:
   * The concept of sampling distribution of the estimator X-bar. (1 pt.)
   * The concept of standard error of the estimator X-bar. (1 pt.)
   * What happens to the spread of values of the 5000 sample means, relative to the population mean of 5, as sample size increases from 30 to 300. Why does (or does not) this make sense? (1 pt.)
   * What happens to the collection of sample means, relative to each other, as sample size increases from 30 to 300. How is this related to the standard error? (1 pt.)