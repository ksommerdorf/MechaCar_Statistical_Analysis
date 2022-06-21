# MechaCar Statistical Analysis
## Overview of Project

The purpose of this project is to provide AutosRUs a statistical analysis report using R that will help improve the manufacturing process. In this project data sets on AutoRUs' newest prototype, MechaCar, were analyzed by performing multiple linear regression, summary statistics, and t-tests. The results are provided to the upper management of AutoRUs for insights that may help the manufacturing process. 

## Linear Regression to Predict MPG

![Deliverable1](https://user-images.githubusercontent.com/57520471/174710380-52d95dc4-a72b-4dfc-bbc7-28d0ebac1634.png)

* The vehicle length and ground clearance provided a non-random amount of variance to the MPG values in the MechaCar_mpg dataset. 
* The p-value of the multiple linear regression is 5.35e-11 which follows well below the significance level of 0.05. Based on these findings the slope of the linear model is not zero which means there is enough evidence to reject the null hypothesis.
* This linear model predicts about 71.5% (based on the R value of 0.7149) of mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils
Summary of All Manufacturing Lots: 

![Deliverable2 1](https://user-images.githubusercontent.com/57520471/174710422-16b12071-830b-4b96-b70e-0f6121c9a06c.png)

* This data is under the assumption that the variance of the MechaCar suspension coils must not exceed 100 pounds per square inch (PSI).
* The variance of the suspension coils for all three lots is observed to be 62.29, which is below the limit of 100 PSI.

Summary of Individual Manufacturing Lots: 

![Deliverable2 2](https://user-images.githubusercontent.com/57520471/174710519-91afb8a9-285e-4bb5-9f52-1585e9bc138d.png)

* Lot1 (variance of 0.98) and Lot2 (variance of 7.47) are observed to be below the 100 PSI limit. 
* Lot3 with a variance of 170.29 is exceeds the 100 PSI limit. 

## T-Tests on Suspension Coils

T-Test for All Manufacturing Lots

![Deliverable3 1](https://user-images.githubusercontent.com/57520471/174710532-75f3cd80-1b96-47dc-9257-f7788df816f9.png)

* The T-Test compared the means in the Suspension Coil dataset (1498.78) against the presumed population mean of 1500.
* The p-value of 0.06 is higher than the significance level of 0.05 which indicates there is not enough evidence to support rejecting the null hypothesis. Also this observation exhibits that the mean of all three of the manufacturing lots is statistically similar to the presumed population mean of 1500.

T-Test for the Individual Lots
Lot1:
![Deliverable3 2](https://user-images.githubusercontent.com/57520471/174710554-37c8033b-9d6e-435f-b48a-6c0399516a9d.png)

* Lot1 has a p-value of 1 which is above significance level and therefore the observed mean is statistically similar to 1500.

Lot2:

![Deliverable3 3](https://user-images.githubusercontent.com/57520471/174710637-3be04810-45fb-417a-99d4-17aea1820301.png)

* Lot2 has a p-value of 0.61 which is above significance level and therefore the observed mean is also statistically similar to 1500.

Lot3:

![Deliverable3 4](https://user-images.githubusercontent.com/57520471/174710669-cfa54a8d-db17-4a3b-8e89-e468b6868612.png)

* Lot3 has a p-value of 0.04 which is below significance level and therefore the observed mean is not statistically similar to 1500.

To summarize, Lot1 and Lot2 indicate that there is not enough evidence to reject the null hypothesis. Lot3 indicates that the null hypothesis should be rejected.

## Study Design: MechaCar vs Competition

Future study that can quantify how the MechaCar performs against the competition:
* Data used for the study will be from MechaCar and comparable models from competitors on maintenance costs, mpg, and engine type from the last 5 years.
* Metrics being tested: maintenance cost (dependent variable), mpg (independent variable), engine type (independent variable)
* Null hypothesis: The slope of the linear model is 0, therefore there is no significant linear relationship.
* Alternative hypothesis: The slope of the linear model is not 0, therefore there is a statistically significant linear relationship.
* A multiple linear regression would be used to determine the statistical difference between the maintenance cost vs mpg and engine type. Multiple linear regression uses the two independent variables (mpg and engine type) to account for parts of the total variance observed against the dependent variable (maintenance cost).
