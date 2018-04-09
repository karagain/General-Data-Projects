%% NN Classification MultiClass

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
end
