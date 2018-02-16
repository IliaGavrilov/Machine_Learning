%Octave tutorial
%Moving data around
A = [1 2; 3 4; 5 6]
size(A) %tells you what is the size of a matrix
sz = size(A) %gives 1 by 2 matrix with values of size A
size(A, 1) %to get size of first dimension of A
size(A, 2) %to get number of columns of the matrix A
v = [1 2 3 4]
length(v) %gives you size of the longest dimension
length(A)

%load data
pwd %gives a Octave location
%cd 'C:\Users\Gavrilov' %stands for changing file directory
ls %will list directories in Octave location
%load file_name.extension %will load file
%load ('file_name.extension') %alternative to loading a file_in_loadpath
%file_name.extension %to display a file data
%size('file_name.extension') %gives a size of a data in file

%save data
v = A(1:3) %gives first 3 elements of A
save hello.mat v %save a vector into file called hello.mat in binary format
save hello.txt v %save a vector in txt file
save hello_2.txt v -ascii %will save as text

who %will show how many variables in workspace
whos %gives a detailed view
clear sz %to delete a variable
%clear %delete all variables in workspace

%data manipulation
%indexing
A(3,2) %indexes into element of 3d row and 2nd column
A(2,:) %will fetch everything in the 2nd row
A(:,2) %gives everything in the second column
A([1 3], :) %gets rows who's indexes 1 or 3 with all elements in it 
%assignment
A(:,2) = [10; 11; 12] %makes 2nd column replaced with specified values
A = [A, [100; 101; 102]] %append another column vector to right
A(:) %puts all elements of A into single column vector
%matrices combination
B = [11 12 13; 14 15 16; 17 18 19]
C = [A B] %concatenating of two matrices
C = [A; B] %concatenates two matrices on top of each other
[A B] == [A, B] 