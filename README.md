# Perceptron-Logistic-Regression
This is my implementation of Logistic Regression using a Perceptron Neural Network
* This machine learning algorithm uses a breast cancer data set from https://archive.ics.uci.edu/ml/datasets/breast+cancer+wisconsin+(original)
* The algorithm uses the first 80% of the data set to train and the last 20% of the data set to test
* The number of iterations ran can be defined by changing the iteration variable
* It first intializes all the weights to 0 and then adjusts the weights during runtime with back-propagation 
* It uses the sigmoid activation function to classify the datapoints to either Malignant or Benign 
* The sigmoid function classifies Benign as 1 and Malignant as 0
* The algorithm at the end outputs Acurracy, Sensitivity, and Specificity as measures of goodness
