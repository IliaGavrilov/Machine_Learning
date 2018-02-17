%Octave turotial
%Control statements

%for loop
v = zeros(10,1)
for i=1:10, %loop through values from 1 to 10
  v(i)=2^i;
end;

indices = 1:10
for i=indices,
  v(i)=i/2;
end;

%while loop
v = zeros(10,1)
i =1
while i<=5,
  v(i)=100; %first 5 values overwritten with 100
  i = i+1;
end;
%break statement
i=1
while true,
  v(i)=999;
  i=i+1;
  if i==6; %when i gets up to 6, do break from while loop
    break;
  end;
end;

%if-else statements
v(1)=2
if v(1)==1;
  disp('The value is one');
elseif v(1)==2;
  disp('The value is two');
else
  disp('The value is not one or two');
end;

%function definition
function y = squareNumber(x); %we going to return one value, which would be saved in variable y
  y = x^2;
end;
squareNumber(5) %calling function

%octave search path
cd 'C:\Users\Gavrilov' %to check if path is in workspace
addpath('C:\Users\Gavrilov') %adding a path to look up

%define a function with multiple arguments
function [y1, y2] = squareAndCubeNumber(x);
  y1 = x^2;
  y2 = x^3;
end;
[a,b]=squareAndCubeNumber(5)

%function to compute cost function J of theta
X = [1 1; 1 2; 1 3] %set up a design matrix (three training examples)
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
  