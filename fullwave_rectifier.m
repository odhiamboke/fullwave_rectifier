clc
clearvars
f1 = 60; 
inv = 1/f1; inc = 1/(80*f1); tnum = 3*inv; 
t = 0:inc:tnum; 
g1 = 120*sqrt(2)*sin(2*pi*f1*t); 
g = abs(g1); 
N = length(g); 
num = 20; 
for i = 1:num 
 for m = 1:N 
 cint(m) = exp(-j*2*pi*(i-1)*m/N)*g(m); 
 end 
 c(i) = sum(cint)/N; 
end 
cmag = abs(c); 
cphase = angle(c); 
disp('dc value of g(t)'); cmag(1) 
f = (0:num-1)*60; 
subplot(121), stem(f(1:5),cmag(1:5)) 
title('Amplitude spectrum') 
xlabel('Frequency, Hz') 
subplot(122), stem(f(1:5),cphase(1:5)) 
title('Phase spectrum') 
xlabel('Frequency, Hz')