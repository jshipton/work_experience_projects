% Use bisection method to solve myf(x)=0
% First guess for interval
xl = 0;
xr = 1;
fl = myf(xl);
fr = myf(xr);

% Iterate bisection method
while xr - xl > 1e-4
    xn = 0.5*(xl + xr);
    fn = myf(xn);
    if fn*fl <= 0
        % Root is in left half interval
        xr = xn;
        fr = fn;
        disp('left side')
        disp([xl,xr])
    else
        % Root is in right half interval
        xl = xn;
        fl = fn;
        disp('right side')
        disp([xl,xr])
    end
end
disp(['Root lies in [',num2str(xl),',',num2str(xr),']'])


