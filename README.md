# MechaCar_Statistical_Analysis
Data Analytics Utilizing R

## Purpose
The goal of this analysis is to perform statistical testing on the given data that can give insights about performance and production of MechaCar's prototype.


## Linear Regression to Predict MPG
We were first tasked with predicting the miles-per-gallon (mpg) for the MechaCar prototypes based on multiple design specifications, including: vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance. In order to do this, a linear regression model was utilized to compare each metric and get a measure of how much each can be used for the prediction. Below depicts the result of the model as well as the summary statistics:

![Linear Reg Model](https://github.com/chichi-ugo/MechaCar_Statistical_Analysis/blob/main/images/lin_reg_mpg.PNG?raw=true)
![Summary Statistics](https://github.com/chichi-ugo/MechaCar_Statistical_Analysis/blob/main/images/summary_lm_mpg.PNG?raw=true)

<!---Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?-->
- The results of the model revealed that there were two variables that returned a non-random amount of variance: **Vehicle Length** and **Ground Clearance**. In the summary statistics, indicated by the gold arrows in the above image, we see that both of these variables returned a t-value (the measure of how many standard deviations our estimated slope is away from 0) that is not close to 0. Additionally, we see that the resulting p-vales for these variables are 2.6e-12 and 5.21e-8 respectively which are far below the significance level and indicates that the results are very unlikely to be of random chance. 
  - We also see that the Intercept value is statistically significant which indicates that there potentially are other variables not tested that have a non-random relationship to mpg.

<!---Is the slope of the linear model considered to be zero? Why or why not?-->
- A slope equal to 0 would indicate that there is no relationship between there is no relationship between the variables and mpg and that the outcomes observed were due to random chance. In our model, we see that the p-value - indicated by the orange outline in the image - is very low (5.35e-11). This indicates to us that the probability the results given were due to random chance are very low, thus we can reject the null hypothesis - the null being that there is no relationship - and assume that our variables do influence the mpg - also meaning that the slope is _not_ 0.
  - Another indication that our slope is not 0 is in the output of the `lm()` function or in the Estimate column of the summary statistics. We see that for all of the variables that were indicated to be statistically significant that there slopes (estimates) were positive numbers not close to 0.

<!---Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?-->
- In order to ascertain whether our model effectively predicts mpg for the MechaCar prototypes, we can look to the R<sup>2</sup> value - which is a measure of how well the model fits the actual data. The R<sup>2</sup> value returned in our model, indicated by the green outline in the image above, is 0.7149. We can interpret this to mean that about 71.5% of the variance found in mpg can be explained by the metrics tested. In relation to our goal, we can say that 71% is is pretty good and that our model is fairly effective in predicting mpg!


## Summary Statistics on Suspension Coils
In this study, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The summary tables are depicted below:

![Total Summary](https://github.com/chichi-ugo/MechaCar_Statistical_Analysis/blob/main/images/tot_sum.PNG?raw=true)
![Lot Summary](https://github.com/chichi-ugo/MechaCar_Statistical_Analysis/blob/main/images/lot_sum.PNG?raw=true)

<!---The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?-->

- When looking at all of the manufacturing lots in total, we see that the variance is about 62.3, which is below 100 PSI meeting the design specification. However, when we look at each Lot individually, we see that Lot 3 has a variance of about 170.3, well above the specification.


## T-Tests on Suspension Coils
Finally, we performed t-test to determine if all the manufacturing lots and each lot individually are statistically different from the population mean of 1,500 PSI. the two measures we will look closelyy at are the t-value and p-value scores for each test. The t-value is essentially the measure of differnece between our sample mean and our population mean - the further the value is from 0, the more likely it is that we will reject the null hypothesis. The p-value expresses the significance level of the t-test, here we will assume a significance level of 5% (or p &le; 0.05). The results of the tests are depicted below:

<!---Briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.-->
![T-test on All Lots](https://github.com/chichi-ugo/MechaCar_Statistical_Analysis/blob/main/images/t-test_allLots.PNG?raw=true)
In testing all of the lots in total, we see a resulting t-value of -1.8931, which is relatively small (by small, we are considering the value's closeness to 0 or, in other words, its absolute value), and a p-value of 0.06028, which is just over our significance level. Thus, we **fail** to reject the null hypothesis - where our H<sub>0</sub> = The sample mean is equal to the population mean. In other words, our sample mean and our population mean are statistically similar.  

![T-tests on Each Individ. Lot](https://github.com/chichi-ugo/MechaCar_Statistical_Analysis/blob/main/images/t-test_eachLot.PNG?raw=true)
In testing each lot individually, we see the following results where the t-values and p-values have been highlighted in the image above. For lots 1 and 2, we see that the t-values are 0 and 0.51745 and the p-values are 1 and 0.6072 respectively. Both of these lots have returned values that indicate a low measure of difference between the sample and the population. The p-values for both are above our significance level, thus for both lots we **fail** to reject our null hypothesis and can assume that our sample means and our population mean are statistically similar. 

For lot 3, we see that the t-value is -2.0916 and the p-value is 0.04168. Here we see that the t-value is a bit further from 0. We also note that the p-vale is less than our significance level. Thus, we **can** reject the null hypothesis and assume that the sample is statistically different from the population.

## Study Design: MechaCar vs Competition
<!---Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.-->
When considering the outlook of how the MechaCar will compare to other vehicles on the market, there are a vast amount of metrics that we can consider. One study that could be conducted is a thorough evaluation of customer satisfaction in order to determine whether certain metrics have more influence on the customers rating for vehicles of a similar build to the MechaCar. 

<!---What metric or metrics are you going to test?-->
To begin, the company must consider what metrics are considered toward customer satisfaction. We specifically want to look at metrics pertaining to the vehicles; therefore, we could consider vehicle performance (which we'll base on fuel efficiency for simplicity), features (a measure of frequency of certain feature-categories being present - such as GPS, lane monitoring, rear-view cameras, etc.), and cost. We can then compare these variables to customer satisfaction rating averages. For this study, we will assume/use numerical figures for customer satisfaction that have been generated from surveys.

<!---What is the null hypothesis or alternative hypothesis?-->
For this study, we could propose the following:
H<sub>0</sub> = no statistical significance of these metrics on customer satisfaction.
H<sub>a</sub> = present statistical significance of these metrics on customer satisfaction.

<!---What statistical test would you use to test the hypothesis? And why?-->
To test this, we could first use a multiple linear regression model to determine if there is a significant relationship between customer satisfaction, performance, and cost. We would use this test because both our dependent and independent variables are continuous, and we want to know if the independent variables affects the variability found in the dependent variable.

We could also then use a one-way ANOVA to compare the satisfaction rating to the features. We would use this test because we want to see how our dependent variable (customer satisfaction) compares to feature, which has multiple groups.

<!---What data is needed to run the statistical test?-->
To run these tests, we would need data from the different manufactures on their similar-build vehicles about their gas milage, cost metrics, and their vehicles included features. We would also need the compiled results of their customer satisfaction surveys - assuming that each customer's satisfaction survey is scored to a percentage/some numerical value.
