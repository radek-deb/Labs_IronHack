## Lab 31 | Encoding 

  
  
  ### Part 1 : Python
  Below is the Table which summarizes the lab, and the results for each method i.e.:
  - Dummy Encoder
  - Label Encoder
  - Backward Difference Coding
  - BaseN
  - Binary
  - CatBoost Encoder
  - Count Encoder
  - Generalized Linear Mixed Model Encoder
  - Hashing
  - Helmert Coding
  - James-Stein Encoder
  - Leave One Out
  - M-estimate
  - One Hot
  - Ordinal
  - Polynomial Coding
  - Sum Coding
  - Target Encoder
  - Weight of Evidence


The methods were invesitgated not in the alphabetical order, as it was easier to go thorugh them differently. For example, as a lot of methods are based on target encoder or give similar results, I firslty invesitgated this method.
   
 The second point is that the last three methods (Wrappers, Quantile Encoder and Summary Encoder) were not present in the category encoders module thus I was not able to study them. 
     

    
    
| Method                                 | Libary            | Code                                                                                                                                         | Result Encode                                                                                                                                                                                                                                                                                                                           |
|----------------------------------------|-------------------|----------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Dummy Enocder                          | Pandas            | pd.get_dummies(data)                                                                                                                         | The encoder adds 13 new columns with 0/1 values in it. This method is case sensitive, so data needs to be properly processed not to get problems with lower and upper case letters (for example)                                                                                                                                        |
| Label Encoder                          | sklearn           | lbl_ebcode = LabelEncoder()                                                                                                                  | It is used for a column (1d array) assigns a numerical value to each unique value; Should be used for ordinal data                                                                                                                                                                                                                      |
|                                        |                   | lbl_ebcode.fit_transform(data['Profession'])                                                                                                 |                                                                                                                                                                                                                                                                                                                                         |
|                                        |                   | lbl_ebcode.fit(data['Profession'])                                                                                                           |                                                                                                                                                                                                                                                                                                                                         |
|                                        |                   | lbl_ebcode.transform(data['Profession'])                                                                                                     |                                                                                                                                                                                                                                                                                                                                         |
| Backward Difference Encoder            | Category Encoders | encoder = ce.BackwardDifferenceEncoder()                                                                                                     | Gives back an array in which values are compared with the values on the levels below                                                                                                                                                                                                                                                    |
|                                        |                   | encoder.fit(data['Risk'])                                                                                                                    |                                                                                                                                                                                                                                                                                                                                         |
|                                        |                   | encoder.fit_transform(data['Risk'])                                                                                                          |                                                                                                                                                                                                                                                                                                                                         |
|                                        |                   | encoder.get_feature_names()                                                                                                                  |                                                                                                                                                                                                                                                                                                                                         |
|                                        |                   | encoder.transform(data['Risk'])                                                                                                              |                                                                                                                                                                                                                                                                                                                                         |
| Ordinal Encoding                       | Category Encoders | encoder= ce.OrdinalEncoder(data['Risk'])                                                                                                     | Converts ordinal data into integers. If not specified assigned integers are random, but they can be specified in the encoder                                                                                                                                                                                                            |
|                                        |                   | encoder.fit_transform(data['Risk'])                                                                                                          |                                                                                                                                                                                                                                                                                                                                         |
|                                        |                   | encoder= ce.OrdinalEncoder(data['Risk'],return_df=True, mapping=[{'col':'Risk', 'mapping':{'None':0,'High':3,'high':3,'low':1,'medium':2}}]) |                                                                                                                                                                                                                                                                                                                                         |
|                                        |                   | encoder.fit_transform(data['Risk'])                                                                                                          |                                                                                                                                                                                                                                                                                                                                         |
| One Hot                                | Category Encoders | encoder=ce.OneHotEncoder(data['Profession'])                                                                                                 | Used for nominal data. Transforms it into Dummy variables i.e. table with 0/1 values. Method is case sensitive thus data should be prcessed before encoding                                                                                                                                                                             |
|                                        |                   | encoder.fit_transform(data['Profession'])                                                                                                    |                                                                                                                                                                                                                                                                                                                                         |
| Sum Encoding                           | Category Encoders | encoder = ce.SumEncoder()                                                                                                                    | It is similar to Dummy encoding, but represents the data using 3 values -1,0 and 1. Value -1 appears where there is a position with only 0. Thanks to that there is one less column comapared to One hot encoder                                                                                                                        |
|                                        |                   | encoder.fit_transform(data['Profession'])                                                                                                    |                                                                                                                                                                                                                                                                                                                                         |
| Hashing                                | Category Encoders | encoder=ce.HashingEncoder()                                                                                                                  | Converts an array into a table with 0/1 values. The number of column can be chosen. It is a one-way prcess.                                                                                                                                                                                                                             |
|                                        |                   | encoder.fit_transform(data['Profession'])                                                                                                    |                                                                                                                                                                                                                                                                                                                                         |
| Binary Encoding                        | Category Encoders | encoder= ce.BinaryEncoder(cols=['Profession'],return_df=True)                                                                                | Converts array into a binary numbers                                                                                                                                                                                                                                                                                                    |
|                                        |                   | encoder.fit_transform(data)                                                                                                                  |                                                                                                                                                                                                                                                                                                                                         |
| BaseN                                  | Category Encoders | encoder= ce.BaseNEncoder(cols=['Profession'],return_df=True,base=5)                                                                          | Returns the Table, with the number of a base that we specifed. It is similar to Binary encoding, but the data is converted to a number with a specified base (base for binary is 2). This allows to represent data with a fewer number of columns as compared to Binary encoding                                                        |
|                                        |                   | encoder.fit_transform(data['Profession'])                                                                                                    |                                                                                                                                                                                                                                                                                                                                         |
| Target Encoder                         | Category Encoders | encoder=ce.TargetEncoder(cols='Profession')                                                                                                  | Encodes categorical data into a number, based on the target value, which means that there needs to be another column with numerical data, which is dependent from the categorical data. Encoder calulates the mean value and represents categorical feature as a mean value. In order to get revelant data we need to have  large data  |
|                                        |                   | encoder.fit_transform(data['Profession'],data['Revenue'])                                                                                    |                                                                                                                                                                                                                                                                                                                                         |
| CatBoost Encoder                       | Category Encoders | encoder = ce.CatBoostEncoder()                                                                                                               | Converts categorical data into a number based on a target values represanted by numerical data. It is similar to Target encoding                                                                                                                                                                                                        |
|                                        |                   | encoder.fit_transform(data['Profession'],data['Revenue'])                                                                                    |                                                                                                                                                                                                                                                                                                                                         |
| Count Encoder                          | Category Encoders | encoder = ce.CountEncoder(cols=['Profession'])                                                                                               | Counts the apearence of a feature and returns an array with that counts                                                                                                                                                                                                                                                                 |
|                                        |                   | encoder.fit_transform(data['Profession'])                                                                                                    |                                                                                                                                                                                                                                                                                                                                         |
| Generalized Linear Mixed Model Encoder | Category Encoders | encoder = ce.GLMMEncoder()                                                                                                                   | Similar to Target encoder, returns an 1D array in which catgeorical data is reprsented by a number, calculated based on a target value. I don't know excatly if my encoding is done correctly, as in the documentation I found information that target values should be represented by binary numbers                                   |
|                                        |                   | encoder.fit_transform(data2['Profession'],data['Revenue'])                                                                                   |                                                                                                                                                                                                                                                                                                                                         |
| Helmert Coding                         | Category Encoders | encoder = ce.HelmertEncoder()                                                                                                                | Returns a table in which featured values at diffrent levels are compared                                                                                                                                                                                                                                                                |
|                                        |                   | encoder.fit_transform(data['Risk'])                                                                                                          |                                                                                                                                                                                                                                                                                                                                         |
| James-Stein Encoder                    | Category Encoders | encoder = ce.JamesSteinEncoder()                                                                                                             | Returns 1d array of numbers calulated for each categorical feature based on the target variable                                                                                                                                                                                                                                         |
|                                        |                   | encoder.fit_transform(data2['Profession'], data['Revenue'])                                                                                  |                                                                                                                                                                                                                                                                                                                                         |
| Leave One Out Encoder                  | Category Encoders | encoder = ce.LeaveOneOutEncoder()                                                                                                            | Returns a1d array with numbers calulated bases on the target avriable. Similar to Target encoding . Useful to minimize the effect fo outliers                                                                                                                                                                                           |
|                                        |                   | encoder.fit_transform(data2['Profession'], data['Revenue'])                                                                                  |                                                                                                                                                                                                                                                                                                                                         |
| M-estimate                             | Category Encoders | encoder = ce.MEstimateEncoder()                                                                                                              | Siplified version of Target Encoder. Thus returns 1d array of numbers calculated based on the target values                                                                                                                                                                                                                             |
|                                        |                   | encoder.fit_transform(data['Profession'], data['Revenue'])                                                                                   |                                                                                                                                                                                                                                                                                                                                         |
| Polynomial Coding                      | Category Encoders | encoder = ce.PolynomialEncoder(cols=["Risk"])                                                                                                | Gives back a 2D array in which values are compared with the values on the levels below                                                                                                                                                                                                                                                  |
|                                        |                   | encoder.fit_transform(data3, verbose=1)                                                                                                      |                                                                                                                                                                                                                                                                                                                                         |
| Weight of Evidence                     | Category Encoders | encoder = ce.WOEEncoder()                                                                                                                    | As a result I obtain a 1d array of numbers, calculated based on the target variable which has to be Binary                                                                                                                                                                                                                              |
|                                        |                   | encoder.fit_transform(data3['Risk'], data['Binary'])                                                                                         |                                                                                                                                                                                                                                                                                                                                         |

  
  ### Part 2 : SQL 
  
  I wrote a code in order to perform One Hot Encoding and Ordinal Encodinf for the provided table in SQL for the selected columns. The code and the results are presented below. The code can be also found in the SQL script.
  
  
  #### One Hot Encoding 
  Performed for the Profession column
    
    
    Code:
    
      
select ClientID, Profession,
case 
when Profession = 'Self-employed' then 1
when Profession = 'self-employed' THEN 1 
else 0 
end as self_employed,
case 
when Profession = 'students' then 1
ELSE 0 
END as students,
case 
when Profession = 'Horeca' then 1 
ELSE 0
end as Horeca,
case 
when Profession = 'finance' then 1 
ELSE 0
END as finance
from example;
  
  Result: 
    
      
     
| ClientID | Profession    | self_employed | students | Horeca | finance |
|----------|---------------|---------------|----------|--------|---------|
| 231      | Self-employed | 1             | 0        | 0      | 0       |
| 765      | students      | 0             | 1        | 0      | 0       |
| 453      | Horeca        | 0             | 0        | 1      | 0       |
| 231      | self-employed | 1             | 0        | 0      | 0       |
| 892      | finance       | 0             | 0        | 0      | 1       |


#### Ordinal Encoding 
Performed for the Risk column
  
   
   Code:
     
select ClientID, Risk,
Case 
When Risk = 'High' Then 3
WHEN Risk = 'high' Then 3
WHEN Risk = 'medium' THEN 2
WHEN Risk = 'low' THEN 1
ELSE 0
END as Ordinal_Encoding
FROM example;
  
    
     Result: 
       
     
| ClientID | Risk   | Ordinal_Encoding |
|----------|--------|------------------|
| 231      | High   | 3                |
| 765      | high   | 3                |
| 453      | medium | 2                |
| 231      | high   | 3                |
| 892      | low    | 1                |

  
