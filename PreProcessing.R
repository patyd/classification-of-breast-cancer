"
Author: Patricia Drapal
Project: To classify Breast Cancer in Malign or Benign
Description: This code was made to choose the best features of the dataset 'BreastCancer' 
            using the Backword Elimination method "


#Importing the dataset
dataset = read.csv('BreastCancer.csv')

# Encoding categorical data
dataset$Diagnosis = factor(dataset$Diagnosis,
                           levels = c('B', 'M'),
                           labels = c(0, 1))
#Counting null values
if(sum(is.na(dataset) = 0))
  print("Don't have null values")


# Splitting the dataset into the Training set and Test set
library(caTools)
set.seed(123)
split = sample.split(dataset$Diagnosis, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

#Feature scaling independent variables
training_set[, 2:30] = scale(training_set[, 2:30])

# Building the optimal model using Backword Elimination
regressor = lm(formula = as.numeric(Diagnosis) ~ .,data = training_set)
summary(regressor)

regressor = lm(formula = as.numeric(Diagnosis) ~ .- Symmetry.SE ,data = training_set)
summary(regressor)

regressor = lm(formula = as.numeric(Diagnosis) ~ .- Symmetry.SE -Concavity.Mean,data = training_set)
summary(regressor)

regressor = lm(formula = as.numeric(Diagnosis) ~ .- Symmetry.SE -Concavity.Mean
               -Smoothness.Mean,data = training_set)
summary(regressor)

regressor = lm(formula = as.numeric(Diagnosis) ~ .- Symmetry.SE -Concavity.Mean
               -Smoothness.Mean -Symmetry.Mean,data = training_set)
summary(regressor)

regressor = lm(formula = as.numeric(Diagnosis) ~ .- Symmetry.SE -Concavity.Mean
               -Smoothness.Mean -Symmetry.Mean -Radius.SE-Concave.Points.SE,data = training_set)
summary(regressor)

regressor = lm(formula = as.numeric(Diagnosis) ~ .- Symmetry.SE -Concavity.Mean
               -Smoothness.Mean -Symmetry.Mean -Radius.SE-Concave.Points.SE
               -Symmetry.Largest.Worst,data = training_set)
summary(regressor)

regressor = lm(formula = as.numeric(Diagnosis) ~ .- Symmetry.SE -Concavity.Mean
               -Smoothness.Mean -Symmetry.Mean -Radius.SE-Concave.Points.SE
               -Symmetry.Largest.Worst-Concavity.SE-Smoothness.Largest.Worst,data = training_set)
summary(regressor)

regressor = lm(formula = as.numeric(Diagnosis) ~ .- Symmetry.SE -Concavity.Mean
               -Smoothness.Mean -Symmetry.Mean -Radius.SE-Concave.Points.SE
               -Symmetry.Largest.Worst-Concavity.SE-Smoothness.Largest.Worst
               -Concavity.Largest.Worst,data = training_set)
summary(regressor)

regressor = lm(formula = as.numeric(Diagnosis) ~ .- Symmetry.SE -Concavity.Mean
               -Smoothness.Mean -Symmetry.Mean -Radius.SE-Concave.Points.SE
               -Symmetry.Largest.Worst-Concavity.SE-Smoothness.Largest.Worst
               -Concavity.Largest.Worst-Fractal.Dimension.Mean-Compactness.SE,data = training_set)
summary(regressor)

regressor = lm(formula = as.numeric(Diagnosis) ~ .- Symmetry.SE -Concavity.Mean
               -Smoothness.Mean -Symmetry.Mean -Radius.SE-Concave.Points.SE
               -Symmetry.Largest.Worst-Concavity.SE-Smoothness.Largest.Worst
               -Concavity.Largest.Worst-Fractal.Dimension.Mean-Compactness.SE
               -Compactness.Largest.Worst,data = training_set)
summary(regressor)

regressor = lm(formula = as.numeric(Diagnosis) ~ .- Symmetry.SE -Concavity.Mean
               -Smoothness.Mean -Symmetry.Mean -Radius.SE-Concave.Points.SE
               -Symmetry.Largest.Worst-Concavity.SE-Smoothness.Largest.Worst
               -Concavity.Largest.Worst-Fractal.Dimension.Mean-Compactness.SE
               -Compactness.Largest.Worst-Compactness.Largest.Worst,data = training_set)
summary(regressor)

regressor = lm(formula = as.numeric(Diagnosis) ~ .- Symmetry.SE -Concavity.Mean
               -Smoothness.Mean -Symmetry.Mean -Radius.SE-Concave.Points.SE
               -Symmetry.Largest.Worst-Concavity.SE-Smoothness.Largest.Worst
               -Concavity.Largest.Worst-Fractal.Dimension.Mean-Compactness.SE
               -Compactness.Largest.Worst-Compactness.Largest.Worst
               -Concave.Points.Mean-Perimeter.SE-Concave.Points.Largest.Worst
               -Texture.SE,data = training_set)
summary(regressor)

regressor = lm(formula = as.numeric(Diagnosis) ~ .- Symmetry.SE -Concavity.Mean
               -Smoothness.Mean -Symmetry.Mean -Radius.SE-Concave.Points.SE
               -Symmetry.Largest.Worst-Concavity.SE-Smoothness.Largest.Worst
               -Concavity.Largest.Worst-Fractal.Dimension.Mean-Compactness.SE
               -Compactness.Largest.Worst-Compactness.Largest.Worst
               -Concave.Points.Mean-Perimeter.SE-Concave.Points.Largest.Worst
               -Texture.SE-Area.Largest.Worst,data = training_set)
summary(regressor)

regressor = lm(formula = as.numeric(Diagnosis) ~ .- Symmetry.SE -Concavity.Mean
               -Smoothness.Mean -Symmetry.Mean -Radius.SE-Concave.Points.SE
               -Symmetry.Largest.Worst-Concavity.SE-Smoothness.Largest.Worst
               -Concavity.Largest.Worst-Fractal.Dimension.Mean-Compactness.SE
               -Compactness.Largest.Worst-Compactness.Largest.Worst
               -Concave.Points.Mean-Perimeter.SE-Concave.Points.Largest.Worst
               -Texture.SE-Area.Largest.Worst-Fractal.Dimension.SE,data = training_set)
summary(regressor)

regressor = lm(formula = as.numeric(Diagnosis) ~ .- Symmetry.SE -Concavity.Mean
               -Smoothness.Mean -Symmetry.Mean -Radius.SE-Concave.Points.SE
               -Symmetry.Largest.Worst-Concavity.SE-Smoothness.Largest.Worst
               -Concavity.Largest.Worst-Fractal.Dimension.Mean-Compactness.SE
               -Compactness.Largest.Worst-Compactness.Largest.Worst
               -Concave.Points.Mean-Perimeter.SE-Concave.Points.Largest.Worst
               -Texture.SE-Area.Largest.Worst-Fractal.Dimension.SE-Area.SE,data = training_set)
summary(regressor)

regressor = lm(formula = as.numeric(Diagnosis) ~ .- Symmetry.SE -Concavity.Mean
               -Smoothness.Mean -Symmetry.Mean -Radius.SE-Concave.Points.SE
               -Symmetry.Largest.Worst-Concavity.SE-Smoothness.Largest.Worst
               -Concavity.Largest.Worst-Fractal.Dimension.Mean-Compactness.SE
               -Compactness.Largest.Worst-Compactness.Largest.Worst
               -Concave.Points.Mean-Perimeter.SE-Concave.Points.Largest.Worst
               -Texture.SE-Area.Largest.Worst-Fractal.Dimension.SE-Area.SE-Texture.Mean
               ,data = training_set)
summary(regressor)

regressor = lm(formula = as.numeric(Diagnosis) ~ .- Symmetry.SE -Concavity.Mean
               -Smoothness.Mean -Symmetry.Mean -Radius.SE-Concave.Points.SE
               -Symmetry.Largest.Worst-Concavity.SE-Smoothness.Largest.Worst
               -Concavity.Largest.Worst-Fractal.Dimension.Mean-Compactness.SE
               -Compactness.Largest.Worst-Compactness.Largest.Worst
               -Concave.Points.Mean-Perimeter.SE-Concave.Points.Largest.Worst
               -Texture.SE-Area.Largest.Worst-Fractal.Dimension.SE-Area.SE-Texture.Mean
               -Radius.Mean ,data = training_set)
summary(regressor)


