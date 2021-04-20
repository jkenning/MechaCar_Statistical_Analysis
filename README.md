# MechaCar Statistical Analysis

Statistical analysis of design data from 50 car prototypes to determine the cause of production issues

## Overview

This project involves performing multiple linear regression analysis to identify which variables in a dataset of car prototypes can predict MPG, collecting summary statistics for PSI of suspension coils from the manufacturing lots, and running t-tests to determine if these lots are statistically different from the mean population. A statistical study is also designed in order to compare the prototype "MechaCar" vehicles against vehicles from other manufacturers. 

### Purpose

In the scenario, the new "MechaCar" prototype is suffering from production troubles that are blocking the manufacturing team's progress. By reviewing the production data for insights, it is hoped that the findings will help the manufacturing team.

## Resources

Tools and software: R 4.0.5, RStudio 1.4.1106, Visual Studio Code 1.54.3

## Linear Regression to Predict MPG

![](https://github.com/jkenning/MechaCar_Statistical_Analysis/blob/main/Images/MechaCar_mpg_mva.png)

Figure 1. Multiple linear regression analysis was performed for MPG against multiple design metrics

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

Vehicle length and ground clearance display the greatest degree of non-random amount of variance and are likely to have an impact on MPG. The intercept is also statistically significant which may mean there are other variables that control variability in MPG which are not included in the model dataset.

**Is the slope of the linear model considered to be zero? Why or why not?**

The p-value of the linear regression analysis is 5.35e-11, which is smaller than the assumed significance level of 0.05%. Therefore, the slope of the linear model is not zero and there is sufficient evidence to reject the null hypothesis. 

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

The r-squared value of the model is 0.7149, which indicates that about 71% of predictions for MPG will be correct. This suggests the linear model is effective at predicting MPG for the car prototypes. 

## Summary Statistics on Suspension Coils

**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

For Lot 1 and Lot 2 the mean and median are all 1500 psi and there is realtively low variance and standard deviation. However, Lot 3 displays a very high variance compared to the other two lots and has a large standard deviation and likely exceeds the design specs. As a result of Lot 3's deviance it brings down the overall mean value across all three lots and means the overall variance and standard deviation are slightly higher than for Lot 1 and 2 individually. Overall, across all the manufacturing lots, the variance in the PSI values is observed to be 62.29 PSI which is within the manufacturer's safety thresholds for suspension coils (cannot exceed 100 PSI). However, the value of 170 PSI for Lot 3 indidivudally is outside of the safety threshold and a cause for concern.

## T-tests on Suspension Coils

![](https://github.com/jkenning/MechaCar_Statistical_Analysis/blob/main/Images/Suspension_mean_ttest.PNG)

Figure 1. T-test function performed across all manufacturing lots

The p-value for all manufacturing lots is 0.06028 which is a little bit higher than the assumed significant level of 0.05% and suggests that the mean of the three lots and is not significantly different from the population mean. 

![](https://github.com/jkenning/MechaCar_Statistical_Analysis/blob/main/Images/Manufacturing_lots_ttests.png)

Figure 2. T-test function performed for each manufacturing lot individually

Both Lot 1 and Lot 2 also display means that are not significantly different statistically from the population mean. Lot 1 has a p-value of 1 suggesting no statistical difference, and Lot 2 has a p-value of 0.6072 which is also very similar. 

Lot 3 has a p-value of 0.04168 which is a little lower than the assumed significance level (0.05). This means that the null hypothesis - suggesting that the sample mean and population mean are statistically similar, can be rejected in this case.

## Study Design: MechaCar vs Competition

In order to determine how "MechaCar" will perform against performance of vehicles from other manufacturers there could be a number of anaylses performed across several different metrics. A example of one metric that could be examined is fuel efficiency, which is generally seen as an increasingly important concern for drivers.

What would need to be determined would be whether this individual factor (e.g. fuel efficiency) has an impact on sales. For example, if the "MechaCar" has a a superior rate of fuel consumption will it sell more cars than its competitors as a result? This hypothesis test uses the cars sample data to determine whether to reject the null hypothesis (e.g. that there is no impact of fuel efficiency on sales). The alternative hypothesis is what is being tested and might believe to be true (that there is an impact on sales). A two-sided alternative hypothesis could allow us to test parameters in either direction, so whether there is a positive or negative effect on sales. 

A simple linear regression model would be used as it requires 1 each of independent and dependent variables for continuous data which is suitable for of vehicle fuel efficiency vs. car sales data. If one or more data categories want to be compared (e.g. car type, car model, car make etc.) then an ANOVA analysis would be more suitable for that data type. 

Using Pearson's correlation (measure of linear correlation between two sets of data), if an resulting r value is < 0.3 then there is either a very weak or non-correlation, whereas a value > 0.5 or 0.7 is a moderate or strong correrlation between the two variables (e.g. fuel efficiency and car sales). For model probability, if we assume a background significance level of 0.05% then if the calculated p-value is <0.05 we can reject the null hypothesis described above. 

It is likely that there is more than one individual factor that may impact car sales in which case it would be good to assess multiple independent variables together versus car sales (e.g. fuel efficiency, safety rating, horespower, maintenance cost etc.). A multiple linear regression could be used to determine which factors, or combination of factors, have the highest correlation to cars sales and therefore potentially matter more to the consumer. If the "MechaCar" does not compare favorably to the resulting metrics then changes could be made ahead of time to help ensure it is as successful as possible upon launch.

