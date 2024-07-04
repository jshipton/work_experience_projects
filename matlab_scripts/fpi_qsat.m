  % Fixed point iteration to solve qsat model problem

q0 = 0.0038;
Cp = 1000;
L = 2.5e6;
H = 3.61e5;

% Set first guess
oldT = 0;
T = 200;

% Iterate until difference is
% small enough
while abs(T - oldT) > 1e-2
    oldT = T;
%    T = (H - L*q0*exp(20 - 5000/T))/Cp
      T = 5000/(20 - log((H - Cp*T)/(L*q0)))
    pause
end

disp(['Estimated root is ',num2str(T)])