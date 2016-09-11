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

positiveClassIndices = find(y == 1);
negativeClassIndices = find(y == 0);

plot(X(positiveClassIndices, 1), X(positiveClassIndices, 2), 'g+', 'LineWidth', 2, ...
    'MarkerSize', 7);
plot(X(negativeClassIndices, 1), X(negativeClassIndices, 2), 'ro', 'LineWidth', 2, ...
    'MarkerSize', 7);

hold off;

end
