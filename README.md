# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
After running the linear regression against the MechaCar_mpg dataframe, the following variables provided a non-random amount of variance;

Intercept
vehicle_weight
ground_clearance

I don't think that the slope of the linear model is considere to be zero due to the p-value suggesting the we would fail to reject.

I think that this linear model does predict the mpg of MechaCar prototypes effectively but could use more data points. The R-squared value is .7149 with an adjusted value of .6825 which seems ideal.

## Summary Statistics on Suspension Coils
After running the summaries for the total and the lot, the total is within allowance of the 100PSI variance, however, broken down by the lot, not all lots are within a 100PSI variance. 

The Total Summary shows that the variance is about 62 making it allowable. 

The Lot Summary though shows that Lot3 has a variance of about 170 which is beyond the allowable threshold of 100PSI. 

## T-Tests on Suspension Coils
After running the T-Tests for the total and then by each lot, I've identified the following p-values 

Total: P-Value = 1 which is suggesting no difference between the lots other than chance.

Lot 1: The P-Value is less than the .05 level

Lot 2: The P-Value is less than the .05 level

Lot 3: The P-Value exceeds the allowable .05 level

Because Lot 3 has exceeded the value, we would reject this lot and fail to reject lots 1 and 2. 

