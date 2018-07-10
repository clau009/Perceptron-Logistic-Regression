clc;clear;
a = load('breast-cancer-wisconsin.mat');
train_x (1:559,1:10) = a.breastcancerwisconsin(1:559,2:11); %first 80% of data set will go to training perceptron
train_y (1:559,1) = a.breastcancerwisconsin(1:559,11); %this is the output result of training the perceptron
train_w (1, 1:10) = 0; %training weights that we begin with
w_train_output (1, 1:10) = 0; %weights that are outputted after being adjusted
error(1:559,1) = 0;
summation = 0;
test_x  (1:140,1:10) = a.breastcancerwisconsin(560:699,2:11);  %last 20% of dataset used for testing
y_pred (1:140,1) = 0; %classifications produced from perceptron
for i = 1:140
    if y_pred(i,1) == 2
        y_pred(i,1) = 1;
    end
    if y_pred(i,1) == 4
        y_pred(i,1) = -1;
    end
for i = 1:559
    for j = 1:10
        summation = summation + (train_w(1,j) * train_x(i,j));
     
    end
    summation = 1/(1+ exp(-1*summation));   %sigmoid activation function
    for j = 1:10
       w_train_output(1,j) = w_train_output(1,j) + (y_pred(i,1) - summation);
    end
end


