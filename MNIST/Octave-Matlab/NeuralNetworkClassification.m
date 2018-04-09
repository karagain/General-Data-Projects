%% NN Classification One-vs-all


%% Setup the parameters you will use for this part of the exercise
input_layer_size  = 400;  % 20x20 Input Images of Digits
num_labels = 10;          % 10 labels, from 1 to 10 (10 corresponds with 0)
                          


% Load Training Data
load('ex3data1.mat'); % training data stored in arrays X, y
m = size(X, 1);

% Function that creates theta for each classification label.
function [all_theta] = oneVsAll(X, y, num_labels, lambda)
m = size(X, 1);
n = size(X, 2);
X = [ones(m, 1) X]; % Add ones to the X data matrix
initial_theta = zeros(n + 1, 1);
options = optimset('GradObj', 'on', 'MaxIter', 50);

for c = 1:num_labels
    [theta, cost] = ...
    fmincg(@(t)(lrCostFunction(t, X, (y == c), lambda)), initial_theta, options);
    all_theta(c, :) = theta;
end

lambda = 0.1;
[all_theta] = oneVsAll(X, y, num_labels, lambda);

% Function
function p = predict(Theta1, Theta2, X)
m = size(X, 1);
num_labels = size(Theta2, 1);
p = zeros(size(X, 1), 1);

% Matrix Multiplication to calculate the activation of each node for the input to hidden layer
X = [ones(m, 1) X];
B = sigmoid(X * Theta1');
% Hidden layer to output
B = [ones(m, 1) B];
C = sigmoid(B * Theta2');

% The output matrix that has the highest activation is exported as the indices which represent the classification. 
% In this scenario, the 10th indices represents 0, and the remaining indices represent the actual number. 
[max_values indices] = max(C, [], 2);
p = indices;
end

pred = predictOneVsAll(all_theta, X);
