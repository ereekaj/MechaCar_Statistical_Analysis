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

Below is a screenshot of the Lot Summary datafram. 
![screenshot of lot summary](https://github.com/ereekaj/MechaCar_Statistical_Analysis/blob/main/Resources/screenshot_lot_summary.png)

From this screenshot, you that the variance for the different manufacturing lots varies from 0.98 to 170. Lot 3 has a variance of 170 which is well above the design specification.  Lot 1, Lot 2 and manufacturing lots in total meet the design specs; however, Lot 3 does not meet the design specs.