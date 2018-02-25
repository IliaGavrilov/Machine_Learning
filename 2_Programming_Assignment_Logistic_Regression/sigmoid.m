function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z)); %1 by 3 vector

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
%theta_transpose_x = theta'*z
%e = 2.71828
%g = 1/1+e^-z
%prob = sigmoid([1 45 85] * theta)
%theta is 3 by 1 zeros
%exp(z)
g=1./(1+exp(-z))



% =============================================================

end
