%cost function J of theta function
X = [1 1; 1 2; 1 3] 
y = [1; 2; 3]
theta = [0;1]
function J = costFunction(X, y, theta)
  %X is the 'design matrix' containing training samples
  %y is the class labels
  m = size(X,1); %number of training examples
  predictions = X*theta %predictions of hypothesis on all m examples
  sqrErrors = (predictions-y).^2; %squared errors
  J=1/(2*m)*sum(sqrErrors);
end;
costFunction(X, y, theta)
%unswer is theta0 is 0, theta1 is 1, which gives 45 degree line, that fits data set perfectly