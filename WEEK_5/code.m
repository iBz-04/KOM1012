% KOM1012 Week 5: Repetition Structures
% This script demonstrates for loops, while loops, break and continue statements,
% and nested loops as covered in the Week 5 lecture material.

%% 1. for Loops: Basic Example
% Loops through a specified index matrix
disp('Basic for Loop Example:');
for k = [1, 3, 7]
    disp(['k = ', num2str(k)]);
end

%% 2. for Loops: Powers of 5
% Calculates 5 raised to powers from 1 to 3
disp('for Loop: Powers of 5 Example:');
for k = 1:3
    a = 5^k;
    disp(['5^', num2str(k), ' = ', num2str(a)]);
end

%% 3. for Loops: Creating a Matrix
% Defines a matrix one element at a time
disp('for Loop: Creating a Matrix Example:');
for k = 1:5
    a(k) = k^2;
    disp(['a = ', num2str(a)]);
end
% Vectorized equivalent
k = 1:5;
a = k.^2;
disp('Vectorized equivalent:');
disp(['a = ', num2str(a)]);

%% 4. for Loops: Counting Scores Above 90
% Counts how many test scores are above 90
disp('for Loop: Counting Scores Above 90 Example:');
scores = [76, 45, 98, 97];
count = 0;
for k = 1:length(scores)
    if scores(k) > 90
        count = count + 1;
    end
end
disp(['Number of scores above 90: ', num2str(count)]);

%% 5. for Loops: Factorial Calculation
% Calculates factorial of a user-input non-negative integer
disp('for Loop: Factorial Calculation Example:');
n = input('Enter a non-negative integer: ');
if ~isscalar(n) || n < 0 || floor(n) ~= n
    disp('Input must be a non-negative scalar integer');
else
    factorial_result = 1;
    for k = 1:n
        factorial_result = factorial_result * k;
    end
    if n == 0
        factorial_result = 1; % 0! = 1
    end
    disp([num2str(n), '! = ', num2str(factorial_result)]);
end

%% 6. for Loops: Series Summation
% Calculates the series sum ((-1)^n * x^(2n+1)) / (2n+1)!
disp('for Loop: Series Summation Example:');
x = input('Enter the value of x: ');
N = input('Enter the value of N (positive integer): ');
if ~isscalar(N) || N <= 0 || floor(N) ~= N
    disp('N must be a positive scalar integer');
else
    S = 0;
    for n = 0:N
        S = S + ((-1)^n * x^(2*n+1)) / factorial(2*n+1);
    end
    disp(['Sum of series for x = ', num2str(x), ', N = ', num2str(N), ': ', num2str(S)]);
end

%% 7. while Loops: Basic Example
% Increments a counter until a condition is met
disp('Basic while Loop Example:');
k = 0;
while k < 3
    k = k + 1;
    disp(['k = ', num2str(k)]);
end

%% 8. while Loops: Powers of 5
% Calculates powers of 5 using a while loop
disp('while Loop: Powers of 5 Example:');
k = 0;
while k < 3
    k = k + 1;
    a(k) = 5^k;
    disp(['a = ', num2str(a)]);
end

%% 9. while Loops: First Multiple of 3
% Finds the first multiple of 3 greater than 10
disp('while Loop: First Multiple of 3 Example:');
a = 0;
while a < 10
    a = a + 3;
    disp(['a = ', num2str(a)]);
end

%% 10. while Loops: Series Summation with Term Threshold
% Calculates series sum until terms are smaller than 0.001
disp('while Loop: Series Summation with Term Threshold Example:');
x = input('Enter the value of x: ');
N = input('Enter the value of N: ');
n = 0;
term = (-1)^n * x^(2*n+1) / factorial(2*n+1);
S = term;
while abs(term) > 0.001
    n = n + 1;
    term = (-1)^n * x^(2*n+1) / factorial(2*n+1);
    S = S + term;
end
disp(['Sum of series with term threshold: ', num2str(S)]);

%% 11. while Loops: Series Summation (Alternative)
% Demonstrates difference in series summation order
disp('while Loop: Alternative Series Summation Example:');
x = input('Enter the value of x: ');
N = input('Enter the value of N: ');
n = 0;
term = (-1)^n * x^(2*n+1) / factorial(2*n+1);
S = 0;
while abs(term) > 0.001
    S = S + term;
    n = n + 1;
    term = (-1)^n * x^(2*n+1) / factorial(2*n+1);
end
disp(['Alternative sum of series: ', num2str(S)]);

%% 12. while Loops: Input Validation
% Validates user input for a positive number
disp('while Loop: Input Validation Example:');
x = input('Enter a positive value of x: ');
while x <= 0
    disp('log(x) is not defined for negative numbers');
    x = input('Enter a positive value of x: ');
end
y = log10(x);
fprintf('The log base 10 of %4.2f is %5.2f\n', x, y);

%% 13. break Statement
% Terminates a loop prematurely
disp('break Statement Example:');
n = 0;
while n < 10
    n = n + 1;
    a = input('Enter a value greater than 0: ');
    if a <= 0
        disp('You must enter a positive number');
        disp('This program will terminate');
        break;
    end
    disp('The natural log of that number is');
    disp(log(a));
end

%% 14. continue Statement
% Skips to the next iteration
disp('continue Statement Example:');
n = 0;
while n < 10
    n = n + 1;
    a = input('Enter a value greater than 0: ');
    if a <= 0
        disp('You must enter a positive number');
        disp('Enter a value again');
        continue;
    end
    disp('The natural log of that number is');
    disp(log(a));
end

%% 15. break and continue in for Loop
% Demonstrates break and continue in a for loop
disp('break in for Loop Example:');
for count = 1:10
    if count == 5
        break;
    end
    fprintf('%d ', count);
end
fprintf('\n');

disp('continue in for Loop Example:');
for count = 1:10
    if count == 5
        continue;
    end
    fprintf('%d ', count);
end
fprintf('\n');

%% 16. Nested Loops
% Fills a matrix using nested loops
disp('Nested Loops Example:');
cols = 5;
rows = 5;
for i = 1:cols
    for j = 1:rows
        a(i,j) = i * j;
    end
end
disp('Matrix filled with nested loops:');
disp(a);