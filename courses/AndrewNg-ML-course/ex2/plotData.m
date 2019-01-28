function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
% computing two vectors which contain the indices of where y is 1 and where y is 0.
pos_index = find(y == 1);
neg_index = find(y == 0);

% plot positive points
plot(X(pos_index,1),X(pos_index,2),'k+','LineWidth',2,'MarkerSize',7);

% plot negative points
plot(X(neg_index,1),X(neg_index,2),'ko','MarkerFaceColor','y','MarkerSize',7);


% =========================================================================



hold off;

end
