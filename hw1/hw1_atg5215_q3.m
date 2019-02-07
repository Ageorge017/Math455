x = [];

% Generate all positive numbers of the system (2,3,-2,3)
[j,i] = meshgrid(-2:3,1:0.25:1.75);
x = [x i.*2.^j];
x =[x; -x]; % Add all negative numbers and 0
x = sort(x); % Sort
y = zeros(1,length(x));
plot(x,y,'+')

