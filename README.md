# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Below is a screenshot of the results of a linear regression model predicting mpg from the vehicle_length, vehicle_weight, spoiler_angle, ground_clearance and AWD variables. 

![Screenshot of linear regression results](https://github.com/ereekaj/MechaCar_Statistical_Analysis/blob/main/Resources/ScreenshotLinearReg.png)

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?** 

Vehicle_weight, spoiler_angle, and AWD provided a non-random amount of variance to mpg because their p-values were all above the normal significance level of 0.05. 

**Is the slope of the linear model considered to be zero? Why or why not?**

If the slope of the model is zero, then that means there is no significant relationship between the variables and mpg.  The slope of this particular linear model is not considered to be zero because the R-squared value is above 0.7. That means there is a strong correlation between the variables and mpg overall.  Also, the p-values of a few of the variables are higher than a normal significance level of 0.05. 

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?** 

This model does not predict mpg effectively in my opinion because it uses variables with p-values that are much lower than a normal significance level.  I think the model would be improved by only using the variables with p-values above the normal significance level.

## Summary Statistics on Suspension Coils

**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

Below is a screenshot of the Total Summary dataframe. 
![screenshot of total summary](https://github.com/ereekaj/MechaCar_Statistical_Analysis/blob/main/Resources/screenshot_total_summary.png)

From this screenshot, you can see that the variance for all manufacturing lots is 63.29. This is below the requirement design specification of 100.  

Below is a screenshot of the Lot Summary dataframe. 
![screenshot of lot summary](https://github.com/ereekaj/MechaCar_Statistical_Analysis/blob/main/Resources/screenshot_lot_summary.png)

From this screenshot, you that the variance for the different manufacturing lots varies from 0.98 to 170. Lot 3 has a variance of 170 which is well above the design specification.  Lot 1, Lot 2 and manufacturing lots in total meet the design specs; however, Lot 3 does not meet the design specs.

## T-Tests on Suspension Coils

Below is a screenshot of the t-test across all manufacturing lots. 
![screenshot of ttest all manufacturing lots](https://github.com/ereekaj/MechaCar_Statistical_Analysis/blob/main/Resources/screenshot_ttestALL.png)

The mean for all the manufacturing lots is 1498.78.  The t-test shows a p-value of 0.06. If we are using a normal significance level of 0.05, then the p-value for all the manufacturing lots is above the significance level. Therefore, we do not have enough evidence to reject the null hypotheses that there is no statistical difference between the observed sample mean and the population mean. 

Below is a screenshot of the t-test each manufacturing lot. 
![screenshot of ttest each manufacturing lot](https://github.com/ereekaj/MechaCar_Statistical_Analysis/blob/main/Resources/screenshot_ttest_by_lot.png)

For Lot1, the mean is 1500 and the same as the population mean.  Not surprisingly, the t-test shows a p-value of 1 which is well above the significance level.  For Lot1, we can't reject the null hypothesis. 

For Lot2, the mean is 1500.2. The t-test shows a p-value of 0.6 which is also well above the significance level.  For Lot2, we also can't reject the null hypothesis.

Lot3 is a different story. For Lot3, the mean is 1496.14. The t-test shows a p-value of 0.042 which is below a normal significance level of 0.05.  Therefore we can reject the null hypotheses and accept the alternative hypotheses that there is a statistical difference between the Lot3 sample mean and the population mean.  

## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

More and more people are concerned with climate change these days. Fuel efficiency has become more and more important to consumers.  To quantify how MechaCar compares to the competition, I would look at overall mpg, and city and highway mpg for each brand. 

The null hypothesis would be that there is no statistical difference between MechaCar mpgs and a competitor mpgs. The alternative hypothesis would be that there is a statistical difference between MechaCar and the competitor mpgs. I would use a two sample t-Test to compare the MechaCar mpgs with a competitor. I would use this statistical test because the data is numerical and continuous. 

I would need the following data to run the t-test:
- mpg data on MechaCar vehicles
- mpg data on various competitors

