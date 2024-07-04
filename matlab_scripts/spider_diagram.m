% Schematic of fixed point iteration
% Spider-web diagram

% Anonymous function g(x)
g = @(x) cos(x) ; 

          %6*x.*exp(-x);

x = linspace(0,3,51);
y = g(x);

hold off
plot(x,x,'k',x,y,'b')
hold on

clear x y
x(1) = 0.1; y(1) = 0;
for iter = 1:10
    x(2*iter) = x(2*iter-1);
    y(2*iter) = g(x(2*iter));
    x(2*iter+1) = y(2*iter);
    y(2*iter+1) = y(2*iter);
end

plot(x,y,'r')
title('Fixed point iteration')
xlabel('x')
ylabel('y')
xlim([0,1.6])
ylim([0,1.5])






