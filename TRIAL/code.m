%% KOM1012 Spring 2025 Exercises - Complete Solutions
% This file contains solutions to all exercises from the assignment

%% Exercise 1: Sum of Prime Numbers Less Than 1000
% Script to sum all prime numbers less than 1000

function exercise1()
    total_sum = 0;

    for num = 2:999  % Start from 2 since 1 is not a prime number
        if isprime(num)
            total_sum = total_sum + num;
        end
    end

    fprintf('The sum of all prime numbers less than 1000 is: %d\n', total_sum);
end

%% Exercise 2: Duplicate Elements of a Vector
% Function to duplicate each element of a vector

function duplicated = duplicateElements(inputVector)
    % Function to duplicate each element of a vector
    % Example: [1 4 3] becomes [1 1 4 4 3 3]
    
    % Get the length of the input vector
    n = length(inputVector);
    
    % Pre-allocate the output vector with twice the size
    duplicated = zeros(1, 2*n);
    
    % Fill the output vector with duplicated elements
    for i = 1:n
        duplicated(2*i-1) = inputVector(i);
        duplicated(2*i) = inputVector(i);
    end
end

% Example usage for Exercise 2:
function exercise2_example()
    result = duplicateElements([1 4 3]);
    disp('Example of duplicateElements([1 4 3]):');
    disp(result);  % Should display [1 1 4 4 3 3]
end

%% Exercise 3: Sum of Positive Numbers
% Script to sum positive numbers until a negative number is entered

function exercise3()
    sum_of_numbers = 0;
    while true
        user_input = input('Enter a number (negative to stop): ');
        
        if user_input < 0
            break;  % Exit the loop if input is negative
        end
        
        sum_of_numbers = sum_of_numbers + user_input;
    end

    fprintf('The sum of all positive numbers entered is: %g\n', sum_of_numbers);
end

%% Exercise 4: First N Elements of Fibonacci Sequence
% Function to generate the first N elements of the Fibonacci sequence

function fib_sequence = fibonacci(N)
    % Function to generate the first N elements of the Fibonacci sequence
    % Input: N - Number of elements to generate
    % Output: fib_sequence - Vector containing the first N Fibonacci numbers
    
    % Handle edge cases
    if N <= 0
        fib_sequence = [];
        return;
    elseif N == 1
        fib_sequence = 1;
        return;
    end
    
    % Initialize the sequence with the first two Fibonacci numbers
    fib_sequence = zeros(1, N);
    fib_sequence(1) = 1;
    fib_sequence(2) = 1;
    
    % Generate the remaining Fibonacci numbers
    for i = 3:N
        fib_sequence(i) = fib_sequence(i-1) + fib_sequence(i-2);
    end
end

% Example usage for Exercise 4:
function exercise4_example()
    result = fibonacci(10);
    disp('First 10 Fibonacci numbers:');
    disp(result);  % Should display [1 1 2 3 5 8 13 21 34 55]
end

%% Exercise 5: First Fibonacci Number with 6 Digits
% Script to find the first Fibonacci number with 6 digits

function exercise5()
    % Initialize the first two Fibonacci numbers
    fib_prev = 1;
    fib_current = 1;
    count = 2;  % We've already counted the first two numbers

    % Continue generating Fibonacci numbers until we find one with 6 digits
    while fib_current < 100000  % A 6-digit number starts from 100000
        % Calculate the next Fibonacci number
        fib_next = fib_prev + fib_current;
        
        % Update values for the next iteration
        fib_prev = fib_current;
        fib_current = fib_next;
        
        % Increment the count
        count = count + 1;
    end

    fprintf('The first Fibonacci number with 6 digits is: %d\n', fib_current);
    fprintf('It is the %d-th number in the sequence\n', count);
end

%% Exercise 6: Perfect Numbers Less Than 10000
% Script to find all perfect numbers less than 10000

function exercise6()
    % A perfect number equals the sum of its proper divisors
    perfect_numbers = [];

    for num = 2:10000
        divisors_sum = 1;  % 1 is always a divisor
        
        % Find all divisors and sum them
        for i = 2:sqrt(num)
            if mod(num, i) == 0  % if i is a divisor
                divisors_sum = divisors_sum + i;
                
                % Add the corresponding divisor if it's different
                if i ~= num/i
                    divisors_sum = divisors_sum + num/i;
                end
            end
        end
        
        % Check if the number is perfect
        if divisors_sum == num
            perfect_numbers = [perfect_numbers, num];
            fprintf('%d is a perfect number\n', num);
        end
    end

    fprintf('Perfect numbers less than 10000 are: ');
    fprintf('%d ', perfect_numbers);
    fprintf('\n');
end

%% Exercise 7: Collatz Conjecture
% Script to calculate steps needed in the Collatz Conjecture for numbers 2 to 1000

function exercise7()
    max_steps = 0;
    max_steps_number = 0;
    steps_array = zeros(1, 999);  % Array to store steps for each number

    for start = 2:1000
        num = start;
        steps = 0;
        
        % Continue until we reach 1
        while num ~= 1
            % Apply the Collatz transformation
            if mod(num, 2) == 0  % if num is even
                num = num / 2;
            else  % if num is odd
                num = 3 * num + 1;
            end
            
            steps = steps + 1;
        end
        
        steps_array(start-1) = steps;  % Store steps for this starting number
        
        % Check if this is the new maximum
        if steps > max_steps
            max_steps = steps;
            max_steps_number = start;
        end
    end

    fprintf('The number that gives the maximum number of steps is: %d\n', max_steps_number);
    fprintf('It takes %d steps to reach 1\n', max_steps);

    % Optional: Plot the results
    figure;
    plot(2:1000, steps_array);
    title('Number of Steps in Collatz Conjecture');
    xlabel('Starting Number');
    ylabel('Number of Steps to Reach 1');
end

%% Exercise: 0-1 Knapsack Problem
% Function to solve the 0-1 knapsack problem

function [bestTotalValue, bestItems] = select_items(weights, values, W)
    N = length(weights); % assume weights and values have the same length
    items = 1:N;
    
    % Generate all possible combinations (2^N possibilities)
    I = genZeroOne(N); 
    
    bestTotalValue = 0;
    bestItems = [];
    
    for k = 1:size(I, 1)
        selected = I(k, :); % can be considered as logical or numerical vector
        
        % Calculate total weight of selected items
        total_weight = sum(weights .* selected);
        
        % Calculate total value of selected items
        total_value = sum(values .* selected);
        
        % Check if this selection is better than the current best
        if total_weight <= W && total_value > bestTotalValue
            bestTotalValue = total_value;
            bestItems = items(selected == 1);
        end
    end
end

% Implementation of genZeroOne function
function I = genZeroOne(N)
    % Generate all possible 0-1 vectors of length N
    n_combinations = 2^N;
    I = zeros(n_combinations, N);
    
    for i = 0:(n_combinations-1)
        binary = dec2bin(i, N);
        for j = 1:N
            I(i+1, j) = str2double(binary(j));
        end
    end
end

% Script to solve the specific knapsack example
function solve_knapsack_example()
    weights = [85 26 48 21 22 95 43 45 55 52];
    values = [79 32 47 18 26 85 33 40 45 59];
    capacity = 120;

    [bestValue, bestItems] = select_items(weights, values, capacity);

    fprintf('Best total value: $%d\n', bestValue);
    fprintf('Selected items: ');
    fprintf('%d ', bestItems);
    fprintf('\n');

    fprintf('Total weight: %d kg\n', sum(weights(bestItems)));
    fprintf('Individual values: ');
    fprintf('$%d ', values(bestItems));
    fprintf('\n');
end

%% Main function to run all examples
% Uncomment the function you want to run

function run_all()
    % Exercise 1: Sum of Prime Numbers
    fprintf('\n--- Exercise 1 ---\n');
    exercise1();
    
    % Exercise 2: Duplicate Elements
    fprintf('\n--- Exercise 2 ---\n');
    exercise2_example();
    
    % Exercise 3: Sum of Positive Numbers
    % Requires user input, uncomment to run
    % fprintf('\n--- Exercise 3 ---\n');
    % exercise3();
    
    % Exercise 4: Fibonacci Sequence
    fprintf('\n--- Exercise 4 ---\n');
    exercise4_example();
    
    % Exercise 5: First 6-Digit Fibonacci
    fprintf('\n--- Exercise 5 ---\n');
    exercise5();
    
    % Exercise 6: Perfect Numbers
    fprintf('\n--- Exercise 6 ---\n');
    exercise6();
    
    % Exercise 7: Collatz Conjecture
    fprintf('\n--- Exercise 7 ---\n');
    exercise7();
    
    % Exercise: Knapsack Problem
    fprintf('\n--- Knapsack Problem ---\n');
    solve_knapsack_example();
end

% Call run_all to execute all exercises
% run_all();