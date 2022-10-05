# MechaCar_Statistical_Analysis


## Purpose



## Linear Regression to Predict MPG
We were first tasked with predicting the miles-per-gallon (mpg) for the MechaCar prototypes based on multiple design specifications, including: vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance. In order to do this, a linear regression model was utilized to compare each metric and get a measure of how much each can be used for the prediction. Below depicts the result of the model as well as the summary statistics:

![Linear Reg Model]()
![Summary Statistics]()

<!---Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?-->
- The results of the model revealed that there were two variables that returned a non-random amount of variance: **Vehicle Length** and **Ground Clearance**. In the summary statistics, indicated by the gold arrows in the above image, we see that both of these variables returned a t-value (the measure of how many standard deviations our estimated slope is away from 0) that is not close to 0. Additionally, we see that the resulting p-vales for these variables are 2.6e-12 and 5.21e-8 respectively which are far below the significance level and indicates that the results are very unlikely to be of random chance. 
  - We also see that the Intercept value is statistically significant which indicates that there potentially are other variables not tested that have a non-random relationship to mpg.

<!---Is the slope of the linear model considered to be zero? Why or why not?-->
- A slope equal to 0 would indicate that there is no relationship between there is no relationship between the variables and mpg and that the outcomes observed were due to random chance. In our model, we see that the p-value - indicated by the orange outline in the image - is very low (5.35e-11). This indicates to us that the probabilty the results given were due to random chance are very low, thus we can reject the null hypothesis - the null being that there is no relationship - and assume that our variables do influence the mpg - also meaning that the slope is _not_ 0.
  - Another indication that our slope is not 0 is in the output of the `lm()` function or in the Estimate column of the summary statistics. We see that for all of the variables that were indicated to be statistically significant that there slopes (estimates) were positive numbers not close to 0.

<!---Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?-->
- In order to ascertain whether our model effectively predicts mpg for the MechaCar prototypes, we can look to the R<sup>2</sup> value - which is a measure of how well the model fits the actual data. The R<sup>2</sup> value returned in our model, indicated by the green outline in the image above, is 0.7149. We can interpret this to mean that about 71.5% of the variance found in mpg can be explained by the metrics tested. In relation to our goal, we can say that 71% is is pretty good and that our model is fairly effective in predicting mpg!


## Summary Statistics on Suspension Coils



## T-Tests on Suspension Coils



## Study Design: MechaCar vs Competition
