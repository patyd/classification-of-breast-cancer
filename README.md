# Breast Cancer Classification (Diagnostic)

## Resume
  This project was made to classify breast cancer as benign or malign using Random Forest.
  
## Data source
  http://archive.ics.uci.edu/ml/datasets/breast+cancer+wisconsin+%28diagnostic%29

## Data Set Information
  Features are computed from a digitized image of a fine needle aspirate (FNA) of a breast mass. They describe characteristics of the cell nuclei present in the image.More details is available on: http://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer-wisconsin/wdbc.names
  
## Analysing and choosing the best features of the dataset

This part was made using R language.

Some steps was required: 
  -Encoding categorical data. 
  The dependent variable (Benign = B and Malign = M) is alphabetic and the independent variables are numerical. So, it was necessary to change the dependent variable into numerical values.
  
  -Counting null values
  This step is important because no data can be rejected.
  
  -Feature scaling independent variables
  It prevents the intensity of a data being a criterion of importance.
  
  -Building the optimal model using Backword Elimination
  At the end of the code, 8 independent variables were chosen as the best predictors.
  
## Classification

This part was made using Python.

## Data Preprocessing
 
 -Importing the Dataset
 -Separating independent variables and the dependent variable
 -Selecting only feature importances
 -Encoding the Dependent Variable
 -Splitting the dataset into the Training set and Test set
 -Feature Scaling
  
## Building Classification Algorithm

Fitting Random Forest Classification to the Training set ( n_estimators = 10, criterion = 'entropy', random_state = 42) 

## Result

Accuracy of the results: 98,24%
