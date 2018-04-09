%% Classification One-vs-all
% This shows the vectorized form of implementing logistic regression to classify the digits.
% The accuracy is about 95%


%% Setup the parameters you will use for this part of the exercise
input_layer_size  = 400;  % 20x20 Input Images of Digits
num_labels = 10;          % 10 labels, from 1 to 10 (10 corresponds with 0)
                          


% Load Training Data
load('ex3data1.mat'); % training data stored in arrays X, y
m = size(X, 1);

% Function that creates theta for each classification label.
% The theta is calculated usin gfmincg which 
function [all_theta] = oneVsAll(X, y, num_labels, lambda)
m = size(X, 1);
n = size(X, 2);
X = [ones(m, 1) X]; % Add ones to the X data matrix
initial_theta = zeros(n + 1, 1);
options = optimset('GradObj', 'on', 'MaxIter', 50);

for c = 1:num_labels
    [theta, cost] = ...
    fmincg(@(t)(lrCostFunction(t, X, (y == c), lambda)), initial_theta, options); 
    % Carl Edward Rasmussen's function to calculate a minimum in a continuous differentiable function
    % The function to be minimized is a logistic function with regularization. 
    % An alternative would be fminuc which finds the minimum of an unconstrained function, does the similar job but may 
    % not get to as good of a minimum due to the the regularization in the function. 
    all_theta(c, :) = theta;
end

lambda = 0.1;
[all_theta] = oneVsAll(X, y, num_labels, lambda);

% Function to calculate 
function p = predictOneVsAll(all_theta, X)
m = size(X, 1);
num_labels = size(all_theta, 1);
p = zeros(size(X, 1), 1);
X = [ones(m, 1) X];
% Matrix Multiplication to calculate the activation of each class. Return position most activated class.
p = sigmoid(X * all_theta');
[max_values indices] = max(p, [], 2);

p = indices;
end

pred = predictOneVsAll(all_theta, X);
