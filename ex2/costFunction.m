function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.


numberOfTrainingExamples = length(y);
costSummation = 0;
for i=1:numberOfTrainingExamples
    costSummation += -y(i)*log(sigmoid(theta' * X(i, :)')) ...
        - (1 - y(i))*log(1 - sigmoid(theta' * X(i, :)'));
end;
J = (1 / numberOfTrainingExamples) * costSummation;

grad = zeros(size(theta));
for j=1:size(theta)
    for i=1:numberOfTrainingExamples
        grad(j) += (sigmoid(theta' * X(i, :)') - y(i)) * X(i, j);
    end;
end;
grad /= numberOfTrainingExamples;

end
