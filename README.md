# Breast Cancer Classification (Diagnostic)

## Resume
  This project was made to classify breast cancer as benign or malign using Random Forest.
  
## Data source
  http://archive.ics.uci.edu/ml/datasets/breast+cancer+wisconsin+%28diagnostic%29

## Data Set Information
  Features are computed from a digitized image of a fine needle aspirate (FNA) of a breast mass. They describe characteristics of the cell nuclei present in the image.For more information please visit (UCI)(http://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer-wisconsin/wdbc.names "the new site")
  
## Analysing and choosing the best features of the dataset

This part was made using R language.

Some steps was required: 

  1. Encoding categorical data. The dependent variable (Benign = B and Malign = M) is alphabetic and the independent variables are numerical. So, it was necessary to change the dependent variable into numerical values.
  
  2. Counting null values. This step is important because no data can be rejected.
  
  3. Feature scaling independent variables. It prevents the intensity of a data being a criterion of importance.
  
  4. Building the optimal model using Backword Elimination. At the end of the code, 8 independent variables were chosen as the best predictors.
  
## Classification

This part was made using Python.

## Data Preprocessing
 
 1. Importing the Dataset
 2. Separating independent variables and the dependent variable
 3. Selecting only feature importances
 4. Encoding the Dependent Variable
 5. Splitting the dataset into the Training set and Test set
 6. Feature Scaling
  
## Building Classification Algorithm

Fitting Random Forest Classification to the Training set ( n_estimators = 10, criterion = 'entropy', random_state = 42) 

## Result

Accuracy of the results: 98,24%
