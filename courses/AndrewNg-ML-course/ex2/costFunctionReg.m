function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

prediction = sigmoid(X*theta);
n = size(theta,1);
s = 0;

temp = theta;
temp = temp.^2;
for j = 2:n,
 s = s + temp(j);
end;

reg_xp = (lambda/(2*m))*s;

J = (1/m) * (sum(-y .* log(prediction) - (1 - y) .* log(1 - prediction))) + reg_xp;

grad(1) = (1/m) * (sum((prediction - y).*X(:,1)));

for r = 2:n,
 grad(r) = (1/m) * (sum((prediction - y).*X(:,r))) + ((lambda/m) * theta(r));
end;

% =============================================================

end
