%Octave tutorial
%Ñomputing on data
A = [1 2; 3 4; 5 6]
B = [11 12; 13 14; 15 16]
C = [1 1; 2 2]

A*C %resular matrix multiplication
A.*B %period(.) gives element-wise multiplication of two matrices
A.^2 %element-wise squaring of A

v = [1; 2; 3]
1./v %element-wise reciprocal %reciprocal for a number x, denoted by 1/x or x?1
1./A %reciprocal works with matrices

log(v) %element-wise logarithm
exp(v)
abs(v) %element-wise absolute value of v

-v %gives negative v
-1*v %same operation to get negative v

v+ones(length(v),1) %incrementing v by 1 (just another way of v+1)

A' %traspose of A
(A')' %transpose back

a = [1 15 2 0.5]
val = max(a)
[val, ind] = max(a) %return max value in vector and its index
[r,c] = find(A>=7) %return indices according to boolean; assigns vectors 
max(A) %return column-wise maximum

a<3 %does element-wise comparison of all elements in vector
find(a<3) %returns indices of elements less than 3

A = magic(3) %returns a matrix with row, column, diagonal add up to same value

sum(a) %sums up all elements of a
prod(a) %product of all elements fo a
floor(a) %rounds values of a down
ceil(a) %rounds values up

max(A) %maximum value in entire matrix
max(A(:)) %return max element of vector
rand(3)
max(rand(3), rand(3)) %takes element-wise maximum of two random 3 by 3 matrices
max(A, [], 1) %column-wise maximum 
max(A, [], 2) %row maximum

A = magic(9)
sum(A,1) %sum per column
sum(A,2) %row wide sum

eye(9)
A.*eye(9) %take element wise product of two matrices
sum(sum(A.*eye(9))) %sum of diagonal line

flipud(A) %turns matrix upsidedown

A = magic(3)
pinv(A) %pseudo inverse
temp = pinv(A)
temp*A %using pinv() we got identity matrix