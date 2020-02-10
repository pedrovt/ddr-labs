% Revisions on plotting

% 1. Create x
x = linspace(0, 10, 100)      % start, end, # values

% 2. Create values of functions
% Remember the usage of .!

f= x.^2+x-3
g= x.^2-4

% 3. Create plots
figure(1)
plot(x, f, 'b-', x, g, 'r:')
title("2 functions")
xlabel("x")
ylabel("function")
legend('f(x)', 'g(x)', 'location', 'northwest')
axis([0 10 -10 110])
grid on