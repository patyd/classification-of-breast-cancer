"""
@author: Patricia Drapal
Project: Classify breast cancer as malignant or benign

 ------------------------------------- ---Data Preprocessing  -----------------------------------------"""

# Importing the libraries
import numpy as np
import pandas as pd

#Importing the Dataset
dataset = pd.read_csv('BreastCancer.csv')

#Separating independent variables and the dependent variable
X = dataset.iloc[:, 1:31].values
y = dataset.iloc[:, 0].values

#Selecting only feature importances
X = np.append(arr = np.ones((569,1)).astype(int), values = X, axis = 1)
X_opt = X[:, [3,4,6,15,21,22,23,30]] 

# Encoding the Dependent Variable
from sklearn.preprocessing import LabelEncoder
labelencoder_y = LabelEncoder()
y = labelencoder_y.fit_transform(y)

# Splitting the dataset into the Training set and Test set
from sklearn.cross_validation import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X_opt, y, test_size = 0.2, random_state = 42)

# Feature Scaling
from sklearn.preprocessing import StandardScaler
sc_X = StandardScaler()
X_train = sc_X.fit_transform(X_train)
X_test = sc_X.transform(X_test)

"""------------------------------------- Classification Algorithm  --------------------------------------------"""

# Fitting Random Forest Classification to the Training set
from sklearn.ensemble import RandomForestClassifier
classifier = RandomForestClassifier(n_estimators = 10, criterion = 'entropy', random_state = 42)
classifier.fit(X_train, y_train)

# Predicting the Test set results
y_pred = classifier.predict(X_test)

"""-------------------------------------------- Results  -------------------------------------------------------"""

# Making the Confusion Matrix
from sklearn.metrics import confusion_matrix
cm = confusion_matrix(y_test, y_pred)

#Calculating the accuracy of the results
from sklearn.metrics import accuracy_score
accuracy_score(y_test, y_pred, normalize=True, sample_weight=None)

