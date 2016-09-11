function g = sigmoid(z)
% Sigmoid function (scalar or element-wise)

g = 1 ./ (1 + exp(-z));

end
