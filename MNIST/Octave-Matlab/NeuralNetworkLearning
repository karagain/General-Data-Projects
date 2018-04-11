%% Machine Learning Online Class - Exercise 4 Neural Network Learning

%% Setup the parameters you will use for this exercise
input_layer_size  = 400;  % 20x20 Input Images of Digits
hidden_layer_size = 25;   % 25 hidden units
num_labels = 10;          % 10 labels, from 1 to 10   (10 is 0 due to the format of Octave)

% Load Training Data
% This gives gives the trainning data as X and the labels as Y
load('ex4data1.mat');
m = size(X, 1);

% Load the weights into variables Theta1 and Theta2. One theta vector for each layer
load('ex4weights.mat');

% Unroll parameters onto a single vector
nn_params = [Theta1(:) ; Theta2(:)];

% Cost Function. This cost function is limited to assume that there is one hidden layer. 
% Theta one is all the weights for converting the inputs into the hidden layer
% Theta two is all the weights for converting the nodes in the hidden layer to the outputs.


                                   
J = nnCostFunction(nn_params, input_layer_size, hidden_layer_size, ...
                   num_labels, X, y, lambda);
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));
Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));
m = size(X, 1);                 
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));                 

% Forward Propagation
act1 = [ones(m, 1) X];
z2 = act1 * Theta1';
act2 = [ones(m, 1), sigmoid(z2)];
z3 = act2 * Theta2';
act3 = sigmoid(z3);

reg = (lambda/(2*m)) * (sum(sum(Theta1(:,2:end).^2)) + sum(sum(Theta2(:,2:end).^2)));    
for c = 1:num_labels
  all_cost(:, c) = (-1/m) * sum((y==c) .* log(act3)(:,c) + (1 - (y==c)) .* log(1 - act3)(:, c));
end
J = sum(all_cost) + reg;

% Back Propagation 

function g = sigmoidGradient(z)
g = sigmoid(z).* (1-sigmoid(z));
end

D2 = 0;
D1 = 0; 
delta3 = 0;
delta2 = 0;
for i=1:m
  yi = zeros(num_labels, 1);
  yi(y(i, :), 1) = 1;
  delta3 = (act3(i, :) - yi');
  delta2 = (delta3 * Theta2 .* [1, sigmoidGradient(z2(i,:))]);
   
  D2 = D2 + delta3'*act2(i,:);
  D1 = D1 + delta2(:, 2:end)'*act1(i,:); 
end
Theta2_grad = 1/m * D2;
Theta1_grad = 1/m * D1;

% Regularization
Theta2_grad(:, 2:end) = Theta2_grad(:, 2:end) + (lambda/m)* Theta2(:, 2:end);
Theta1_grad(:, 2:end) = Theta1_grad(:, 2:end) + (lambda/m)* Theta1(:, 2:end);
end

options = optimset('MaxIter', 50);
lambda = 1;
costFunction = @(p) nnCostFunction(p, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, X, y, lambda);

[nn_params, cost] = fmincg(costFunction, initial_nn_params, options);

Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));
Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

%PREDICT Predict the label of an input given a trained neural network
function p = predict(Theta1, Theta2, X)

m = size(X, 1);
num_labels = size(Theta2, 1);
p = zeros(size(X, 1), 1);

h1 = sigmoid([ones(m, 1) X] * Theta1');
h2 = sigmoid([ones(m, 1) h1] * Theta2');
[dummy, p] = max(h2, [], 2);
end

pred = predict(Theta1, Theta2, X);

fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);
