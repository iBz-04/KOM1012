% KOM1012 Week 6: User-Defined Functions
% This script tests all user-defined functions created for Week 6 lecture material:
% sumOfNumbers, degToRad, radToDeg, mypoly, motion, fact, findroots, xsc (with subfunctions).
% Assumes all function .m files are in the current MATLAB path.

%% 1. Test sumOfNumbers
disp('Testing sumOfNumbers Function:');
a = 3;
b = 4;
s = sumOfNumbers(a, b);
disp(['Sum of ', num2str(a), ' and ', num2str(b), ' is: ', num2str(s)]);

%% 2. Test degToRad and radToDeg
disp('Testing degToRad and radToDeg Functions:');
degrees = 0:45:180;
radians = degToRad(degrees);
disp('Degrees to Radians:');
disp(['Input degrees: ', num2str(degrees)]);
disp(['Output radians: ', num2str(radians)]);
degrees_back = radToDeg(radians);
disp('Radians back to Degrees:');
disp(['Output degrees: ', num2str(degrees_back)]);

%% 3. Test mypoly
disp('Testing mypoly Function:');
x = 4;
result = mypoly(x);
disp(['Polynomial value at x = ', num2str(x), ': ', num2str(result)]);

%% 4. Test motion
disp('Testing motion Function:');
t = 3;
x0 = 1;
[x, v, a] = motion(t, x0);
disp(['Motion at t = ', num2str(t), ', x0 = ', num2str(x0), ':']);
disp(['Position (x) = ', num2str(x)]);
disp(['Velocity (v) = ', num2str(v)]);
disp(['Acceleration (a) = ', num2str(a)]);
% Test with vector input
time = 0:1:3;
[x, v, a] = motion(time, 1);
disp('Motion with vector time input:');
disp(['Time: ', num2str(time)]);
disp(['Position (x): ', num2str(x)]);
disp(['Velocity (v): ', num2str(v)]);
disp(['Acceleration (a): ', num2str(a)]);

%% 5. Test fact
disp('Testing fact Function:');
try
    x = 5;
    y = fact(x);
    disp(['Factorial of ', num2str(x), ' is: ', num2str(y)]);
    % Test invalid input
    x = -1;
    y = fact(x);
catch e
    disp(['Error in fact: ', e.message]);
end

%% 6. Test findroots
disp('Testing findroots Function:');
a = 1;
b = -3;
c = 2;
[x1, x2] = findroots(a, b, c);
disp(['Roots of quadratic (a=', num2str(a), ', b=', num2str(b), ', c=', num2str(c), '):']);
disp(['x1 = ', num2str(x1)]);
disp(['x2 = ', num2str(x2)]);

%% 7. Test xsc (with subfunctions)
disp('Testing xsc Function (with subfunctions):');
x = 5;
[x2, x3] = xsc(x);
disp(['Square and cube of ', num2str(x), ':']);
disp(['Square (x2) = ', num2str(x2)]);
disp(['Cube (x3) = ', num2str(x3)]);

%% 8. Test global variable with distance
disp('Testing distance Function with Global Variable:');
global G
G = 9.8;
t = 2;
result = distance(t);
disp(['Distance fallen in ', num2str(t), ' seconds with G = ', num2str(G), ': ', num2str(result)]);