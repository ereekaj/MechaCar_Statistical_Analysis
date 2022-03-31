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

