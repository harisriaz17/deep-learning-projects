function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
% computing J

prediction = X * theta;
theta_reg = theta(2:end,:);
error_vec = prediction-y; 
J = ((1/(2*m)) * sum((error_vec).^2)) + ((lambda/ (2*m)) * sum(theta_reg.^2));

% computing grad

theta_grad = theta;
theta_grad(1,:) = 0;
grad = (1/m) * (X' * error_vec) + ((lambda/m) * theta_grad);


% =========================================================================

grad = grad(:);

end

