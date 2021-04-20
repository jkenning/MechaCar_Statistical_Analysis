# MechaCar Statistical Analysis

Statistical analysis of design data from 50 car prototypes to determine the cause of production issues

## Overview

This project involves performing multiple linear regression analysis to identify which variables in a dataset of car prototypes can predict MPG, collecting summary statistics for PSI of suspension coils from the manufacturing lots, and running t-tests to determine if these lots are statistically different from the mean population. A statistical study is also designed in order to compare the prototype "MechaCar" vehicles against vehicles from other manufacturers. 

### Purpose

In the scenario, the new "MechaCar" prototype is suffering from production troubles that are blocking the manufacturing team's progress. By reviewing the production data for insights, it is hoped that the findings will help the manufacturing team.

## Resources

Tools and software: R 4.0.5, RStudio 1.4.1106, Visual Studio Code 1.54.3

## Linear Regression to Predict MPG

![]()
Figure 1. Multiple linear regression analysis was performed for MPG against multiple design metrics

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

Vehicle length and ground clearance display the greatest degree of non-random amount of variance and are likely to have an impact on MPG. The intercept is also statistically significant which may mean there are other variables that control variability in MPG which are not included in the model dataset.

**Is the slope of the linear model considered to be zero? Why or why not?**

The p-value of the linear regression analysis is 5.35e-11, which is smaller than the assumed significance level of 0.05%. Therefore, the slope of the linear model is not zero and there is sufficient evidence to reject the null hypothesis. 

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

The r-squared value of the model is 0.7149, which indicates that about 71% of predictions for MPG will be correct. This suggests the linear model is effective at predicting MPG for the car prototypes. 

## Summary Statistics on Suspension Coils

**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

For Lot 1 and Lot 2 the mean and median are all 1500 psi and there is realtively low variance and standard deviation. However, Lot 3 displays a very high variance compared to the other two lots and has a large standard deviation and likely exceeds the design specs. As a result of Lot 3's deviance it brings down the overall mean value across all three lots and means the overall variance and standard deviation are slightly higher than for Lot 1 and 2 individually. 



