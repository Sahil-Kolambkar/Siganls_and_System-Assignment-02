% Matlab code for Convolution in Discrete time 

% sample input for x -> sin(2*pi*0.1.*(1:1:11))
% sample input for h -> [1 2 3 4 5 3 1 -1]

close all
clearvars
x=input('Enter x:     ')
h=input('Enter h:   ')
m=length(x);
n=length(h);
X=[x,zeros(1,n)];
H=[h,zeros(1,m)];
for i=1:n+m-1
    Y(i)=0;
    for j=1:m
        if(i-j+1>0)
            Y(i)=Y(i)+X(j)*H(i-j+1);
        else
        end
    end
end

figure;
subplot(3,1,1); stem(x, '-b^'); xlabel('n');
ylabel('x[n]'); grid on;
subplot(3,1,2); stem(h, '-ms');
xlabel('n'); ylabel('h[n]'); grid on;
subplot(3,1,3); stem(Y, '-ro');
ylabel('Y[n]'); xlabel('n'); grid on;
title('Convolution in Discrete Time');
