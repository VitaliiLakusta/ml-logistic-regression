function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters.

m = length(y); % number of training examples

[J, grad] = costFunction(theta, X, y);
thetaSquaredSummation = 0;
for i=2:size(theta)
    thetaSquaredSummation += theta(i)^2;
    grad(i) += (lambda / m) * theta(i);
end
J += (lambda / (2*m)) * thetaSquaredSummation;

end
