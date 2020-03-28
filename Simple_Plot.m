x = linspace(0, 2*pi);

figure (1);
plot (x, sin (x));
hold on
plot (x, cos (x));
hold off
set(gca,'XTick',0:pi/2:2*pi) 
set(gca,'XTickLabel',{'0','pi/2','pi','3*pi/2','2*pi'})
xlabel ("x");
ylabel ("sin_rad (x)");
title ("Simple 2-D Plot");
grid on;

figure (2);
plot (x, x.^2);
xlabel ("x");
ylabel ("x^2");
title ("Simple 2-D Plot");
grid minor;