
t(1) = 0    ; 
S(1) = 6e7  ; 
I(1) = 1000 ; 
R(1) = 0    ;

r = 3e-9 ; 
a = 1/14 ; 

Tstop  = 200 ; 
nsteps = 200 ; 
h = Tstop / nsteps ; 

for n = 1:nsteps
    
    t(n+1) = t(n) + h ; 
    S(n+1) = S(n) + h * ( - r*I(n)*S(n)          ) ;
    I(n+1) = I(n) + h * (   r*I(n)*S(n) - a*I(n) ) ;
    R(n+1) = R(n) + h * (                 a*I(n) ) ;     
    
end

plot(t,S,'b', t,I,'r', t,R,'k')
set(gca, 'Fontsize', 18)
legend('S','I','R', 'Location', 'NorthEastOutside')
xlabel('Time (days)')
ylabel('Population')
