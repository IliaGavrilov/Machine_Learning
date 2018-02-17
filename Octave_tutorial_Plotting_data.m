%Octave tutorial
%Plotting Data
t = [0:0.01:0.98] %array of numbers
y1 = sin(2*pi*4*t)
plot(t,y1) %to plot sin function, where t is horisontal and y1 is vertical 
y2 = cos(2*pi*4*t) 
plot(t,y2) %replace plot with cosine function

%plotting two functions on top of each other
plot(t,y1)
hold on
plot(t,y2, 'r') %new plot would be in a red color
xlabel('time') %to label x axis
ylabel('value') %to label y axis
legend('sin', 'cos') %label both functions in a legend box
title('my plot') %title on the top of a plot
cd 'C:\Users\Gavrilov'; print -dpng 'myPlot.png' %to save plot as a file
close %if you want to get rid of a plot

%specification of a different figures
figure(1); plot(t,y1)
figure(2); plot(t,y2)

%plot manipulation
subplot(1,2,1) %sub divides the plot into 1 by 2 grid, acces first element  
plot(t, y1) %fills up first element
subplot(1,2,2) %creates a graph, acces to second element
plot(t,y2) %fills up second element
axis([0.5 1 -1 1]) %to change axis scale, sets x and y ranges
clf %will clear a figure

%color maps
A = magic(5)
imagesc(A) %this will plot 5 by 5 matrix as 5 by 5 grid of colors
imagesc(A), colorbar, colormap gray %three commands at a time %sets color to gray map

%comma chaining a function calls
a = 1, b = 2, c = 3 %carrying out three commands one after another
a = 1; b = 2; c = 3; %it is basically same, except it will not print anything
