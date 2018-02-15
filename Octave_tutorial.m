%Octave tutorial
%Basic operations
2^6
%logical operations
1==2 
1~=2 %not equal
1&&0 %logical AND
1||0 %logical OR operation
xor(1,0)
a = 3; %semicolon supressing output
b = pi
disp(b) %more advanced printing
disp(sprintf('2 decimals: %0.2f', b))%display strings
format long %causes to display a lot more decimal places
b
format short %commant that restores default
%vectors and matrices
A = [1 2; 3 4; 5 6] %generates 3 by 2 matrix
A = [1 2;
3 4;
5 6] %other ways to to type matrix in
v = [1 2 3] %vector assignment of 1 by 3 dimension
v = [1; 2; 3] %column vector 3 by 1
v = 1:0.1:2 %creates a vector starts from 1, increments with step 0.1 up to 2
v = 1:6 %vector with set of number from 1 to 6
ones(2,3) %generates 2 by 3 matrix of all ones
C = 2*ones(2,3) %generates 2 by 3 matrix with all 2's
w = zeros(1,3) %generates 1 by 3 matrix with all zeros
w = rand(1,3) %gives 1 by 3 matrix of all random numbers
w = randn(1,3) %Gaussian random variable (nornal random variable)
w = -6 + sqrt(10)*(randn(1,1000));
hist(w) %visualisation of a histogram
I = eye(4) %4 by 4 identity matrix