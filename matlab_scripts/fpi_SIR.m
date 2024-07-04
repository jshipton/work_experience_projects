% Fixed point iteration to solve SIR model problem

I0 = 1000;
S0 = 6e7;
Imax = 1e5;

% Set first guess
oldq = 0;
q = 4.2e-8;

% Iterate until difference is
% small enough
while abs(q - oldq) > 1e-13
    oldq = q;
    q = (log(q*S0) + 1)/(I0 + S0 - Imax)
    pause
end

disp(['Estimated root is ',num2str(q)])