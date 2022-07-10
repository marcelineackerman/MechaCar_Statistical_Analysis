# MechaCar Statistical Analysis
A statistic analysis of particular metrics of the AutosRUs MechaCar to enable manufacturing progress

## Overview

The new MechaCar from AutosRUs is suffering from troubles in production. The goal of this analytical review is to help relieve those troubles by:
 - discovering which variables pedict the Miles Per Gallon for prototype vehicles;
 - collect summary stats on the PSI of suspension coils;
 - determine what statistical differences, if any, are present among manufacturing lots from the mean;
 - design a study to compare success factors of other manufacturer vehicles against MechaCar performance

## Results

### Linear Regression to Predict MPG
![image](https://user-images.githubusercontent.com/100869713/178148598-8a3eb0b6-c056-449f-85fb-bf69145143b1.png)
 
 - With p-values of `2.6x10⁻¹²` and `5.21x10⁻⁸`, *Vehicle Length* and *Ground Clearance* are, respectively, the two most statistically significant factors in our dataset that affected the MPG of the MechaCar. The other variables do not seem to be statistically significant at all according to our model. However, the intercept is also statistically significant, indicating there may be other factors affecting our MPG that we did not measure.
 - The null hypothesis must be rejected, as the p-value for the linear model is `5.35x10⁻¹¹`. This is lower than an extreme level of significance, meaning at least some of our variables do have a significant impact on the MPG and cannot be attributed to random chance.
 - The model is 71% accurate, as noted by the R-Squared value of `0.7149`. It can accurately predict the MPG performance of the MechaCar, though there is room for improvement, likely by locating even more statistically significant variables.
