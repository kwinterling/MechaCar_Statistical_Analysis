# MechaCar_Statistical_Analysis


## Linear Regression to Predict MPG

![MPG Linear Regression](Resources/part1.png)

Based on the above linear regression summary, we do not have that great of a fit because the residual standard error is 8.774. However, this should be good enough for a "ballpark" estimate considering that mpg is relatively large compared to the standard deviation of residuals. Most variance comes from spoiler_angle, followed by vehicle_weight and AWD. The slope is nonzero because we have non-zero coefficients associated with each of the predictors. Our adjusted R-squared is nonetheless 0.6825 and non-adjusted R-squared is 0.7149, so the model is correct about 70% of the time, which I would consider a "good" fit.

## Summary Statistics on Suspension Coils

![Total Summary](Resources/total_summary.png)

![Lot Summary](Resources/lot_summary.png)

The overall mean and median for each lot and all data is roughly the same, at around 1500. However, the variance of Lot3 suspension coils significantly exceeds 100 at 170.29, so therefore the Lot3 suspension coils do not meet the design specification. However, the suspension coils in Lot1 and Lot2 do meet the design specification.


