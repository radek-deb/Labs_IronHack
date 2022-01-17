## Lab17 | Regression in Excel

These are my solutions (2 excel files) for the Lab17: Regression in Excel.

### Challenge 1


**Create a line chart that shows the dynamics of the indicator for Eritrea and Bhutan. The chart should have the title, axes and data labels. Explain the chart**

Chart is presented in Excel file (Task_1).

Explenation: 

The chart shows how the Acces to electricity changed over time in two African countries. Buthan reached in the last years 100% which is good. The situation in Eythrea on the other hand is much worst as around 50% of population still has no acces to the eletricity.


**Create a new tab “Prediction” and copy the column names and all the data for Burundi. Choose the appropriate regression model and provide the prediction for the next 2 periods. Explain the choice, quality of the model and the results.**

I created models using linear, expotential and logarythmic aproach. The 3 models gave Rsuared values equal to respectivelly 0.9322, 0.9753 and 0.9317.

Based on this results I used expotential model to calculate preditions for years 2020 and 2021. There are presented in the Table below as well as in the excel file. 

| Year | Access to electricity (% of population) |
|------|-----------------------------------------|
| 2020 | 12.1199537                              |
| 2021 | 13.11364329                             |


### Challenge 2

**Calculate the correlation between the variables. Comment**

Correlation matrix: 

|               | on road old  | on road now  | years        | km           | rating       | condition    | top speed    | current price |
|---------------|--------------|--------------|--------------|--------------|--------------|--------------|--------------|---------------|
| on road old   | 1            |              |              |              |              |              |              |               |
| on road now   | 0.027494256  | 1            |              |              |              |              |              |               |
| years         | 0.034022442  | -0.002274472 | 1            |              |              |              |              |               |
| km            | 0.034459486  | -0.069130653 | -0.061120068 | 1            |              |              |              |               |
| rating        | -0.086731441 | 0.054154116  | 0.041906003  | -0.050582605 | 1            |              |              |               |
| condition     | -0.031929288 | 0.035774676  | 0.100196931  | 0.000723838  | -0.020550899 | 1            |              |               |
| top speed     | -0.040035875 | 0.047185836  | 0.012653031  | 0.009187498  | -0.073374362 | -0.017786818 | 1            |               |
| current price | 0.20003964   | 0.304400197  | 0.055598395  | -0.936734599 | 0.041296095  | 0.095762504  | -0.009165434 | 1             |

Comment: 

Above I see correlation matrix between variables. From this correlation matrix I can see that there is a strong negative correlation between current price and km. 
Between other variables there is very week or no correlation.

**Create the linear multiple regression model taking into account that “current price” is a dependent variable**

The model is presented in the Excel file. Below are shown the main parameters of the model. 

| Regression Statistics |             |
|-----------------------|-------------|
| Multiple R            | 0.99770219  |
| R Square              | 0.995409659 |
| Adjusted R Square     | 0.995348221 |
| Standard Error        | 8615.349726 |
| Observations          | 531         |


|             | Coefficients | Standard Error | t Stat       | P-value     | Lower 95%    | Upper 95%    | Lower 95.0%  | Upper 95.0%  |
|-------------|--------------|----------------|--------------|-------------|--------------|--------------|--------------|--------------|
| Intercept   | -15611.72955 | 7472.600759    | -2.089196259 | 0.037172785 | -30291.73006 | -931.7290417 | -30291.73006 | -931.7290417 |
| on road old | 0.504219641  | 0.006548026    | 77.00330829  | 1.6029E-287 | 0.491355978  | 0.517083305  | 0.491355978  | 0.517083305  |
| on road now | 0.502512575  | 0.006514839    | 77.13353597  | 7.1139E-288 | 0.489714107  | 0.515311043  | 0.489714107  | 0.515311043  |
| years       | -1347.79767  | 217.9966487    | -6.182653166 | 1.27068E-09 | -1776.054313 | -919.5410273 | -1776.054313 | -919.5410273 |
| km          | -3.99986593  | 0.012822395    | -311.9437438 | 0           | -4.025055656 | -3.974676204 | -4.025055656 | -3.974676204 |
| rating      | 404.2377679  | 267.318637     | 1.512194482  | 0.131088389 | -120.9124246 | 929.3879604  | -120.9124246 | 929.3879604  |
| condition   | 4448.227382  | 136.1487572    | 32.67181774  | 2.0871E-128 | 4180.761758  | 4715.693006  | 4180.761758  | 4715.693006  |
| top speed   | 0.174057057  | 19.70728496    | 0.008832118  | 0.992956449 | -38.54110552 | 38.88921963  | -38.54110552 | 38.88921963  |


**Explain the value of the Adjusted R Square**

R2 is 0.995 which is high and sayas that the created model described 99.5% of data variance  

**What the Standard Error is? Explain the value.**

Standard error is  an estimate of standrd deviation. It is the same as in statistics. Here in the regrassion model it tells us how precise is the model. In the analysed case it is equal to 8615.35

**Are the variables significant? Why?**

To say if the avriables are significant we need to look at the p-values. 
In our case the p-values above 0.05 are observed for rating and top speed, which means that these 2 variables are not significant and can redo the model without them 
The rest of the variables are significant (p-value below 0.05)

**What will be the value of the “Current price” if:**

| #on road old | #on road now | #years | #km   | #rating | #condition | #top speed |
|--------------|--------------|--------|-------|---------|------------|------------|
| 20000        | 54300        | 5      | 23459 | 2       | 3          | 150        |


I will calculate the current price without top speed and raiting as these two variables were proved to be not significant.

Results for 2nd model (without rating and top speed).

| Regression Statistics |             |
|-----------------------|-------------|
| Multiple R            | 0.997692074 |
| R Square              | 0.995389474 |
| Adjusted R Square     | 0.995345565 |
| Standard Error        | 8617.809006 |
| Observations          | 531         |


|             | Coefficients | Standard Error | t Stat       | P-value     | Lower 95%    | Upper 95%    | Lower 95.0%  | Upper 95.0%  |
|-------------|--------------|----------------|--------------|-------------|--------------|--------------|--------------|--------------|
| Intercept   | -14195.69275 | 6669.330466    | -2.128503427 | 0.033760362 | -27297.5448  | -1093.840709 | -27297.5448  | -1093.840709 |
| on road old | 0.503329572  | 0.006515329    | 77.25313634  | 6.8228E-289 | 0.490530255  | 0.516128888  | 0.490530255  | 0.516128888  |
| on road now | 0.503059273  | 0.006497052    | 77.42885023  | 2.2786E-289 | 0.49029586   | 0.515822685  | 0.49029586   | 0.515822685  |
| years       | -1332.713235 | 217.7844138    | -6.119415122 | 1.83848E-09 | -1760.549159 | -904.8773101 | -1760.549159 | -904.8773101 |
| km          | -4.000661204 | 0.012814378    | -312.2009624 | 0           | -4.025834959 | -3.97548745  | -4.025834959 | -3.97548745  |
| condition   | 4442.019442  | 136.0836237    | 32.64183683  | 1.8545E-128 | 4174.684135  | 4709.354748  | 4174.684135  | 4709.354748  |

Based on that model (all parameters are significant) I calculate price: 

The value of the cuurent price for the values above is:
-64002.00186


The value is negative which means that it is not profitable to sell a car 








