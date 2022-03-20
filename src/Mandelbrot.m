% Generate a Mandelbrot set

clc,clear,close all;
a = -2:0.001:1;
b = -1:0.001:1;
[A,B]=meshgrid(a,b);
c = A + B*1i;
mandelbrot = zeros(size(c));

for idx = 1:length(c(:))
    repeats = 0;
    maxRepeat = 50;
    maxRadius = 2;
    z = 0;
    while (abs(z)<= maxRadius) && (repeats <= maxRepeat)
        z = z^2 + c(idx);
        repeats = repeats + 1;
        %abs(z)
    end
    if repeats > maxRepeat
        mandelbrot(idx) = 1;
    else
        mandelbrot(idx) = 0;
    end
end

figure;
plot(A(mandelbrot==1),B(mandelbrot==1),'k.');
axis off
axis equal