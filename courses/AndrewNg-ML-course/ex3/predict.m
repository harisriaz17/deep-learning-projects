function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%
X = [ones(m,1),X];


% implementing vectorized forward propagation algorithm

a1 = X;
z2 = Theta1*a1';
a2 = sigmoid(z2);
a2 = [ones(1,columns(a2));a2];
z3 = Theta2*a2;
a3 = sigmoid(z3');

[max, max_index] = max(a3,[],2);
p = max_index;
















%a2 = zeros(25,1);
%for i = 1:m,
%	for j = 1:n,
%		z2 = Theta1(i,j) .* X(i,j)';
%		a2(j,1) = sigmoid(z2);
%	end;
%end;

%a2 = [ones(size(a2,1),1),a2];

%for k = 1:m,
%	for l = 1:num_labels,
%		z3 = Theta2(k,l) .* a2(k,l);
%		a3(l,1) = sigmoid(z3);
%	end;
%	[max, max_index] = max(a3,[],1);
%	p(k,1) = max_index;
%end;



%	a1 = X(i,:);
%	z2 = Theta1(i,:) * a1';
%	a2(i,1) = sigmoid(z2);
%end;

% =========================================================================


end
