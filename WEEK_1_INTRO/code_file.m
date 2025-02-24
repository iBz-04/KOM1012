%% Week 1: Introduction to MATLAB Environment
% This script covers basic syntax, variables, arithmetic operations, and simple matrix operations.

%% Section 1: MATLAB as a Calculator
% Using MATLAB for simple arithmetic operations.

% Addition
sum_result = 5 + 3;

% Subtraction
sub_result = 10 - 4;

% Multiplication
mul_result = 6 * 7;

% Division
div_result = 20 / 4;

% Exponentiation
exp_result = 2^3;

% Display Results
disp('--- MATLAB as a Calculator ---');
fprintf('Addition (5 + 3) = %d\n', sum_result);
fprintf('Subtraction (10 - 4) = %d\n', sub_result);
fprintf('Multiplication (6 * 7) = %d\n', mul_result);
fprintf('Division (20 / 4) = %d\n', div_result);
fprintf('Exponentiation (2^3) = %d\n\n', exp_result);

%% Section 2: Variables and Data Types
% Defining variables and understanding data types.

% Variable assignment
x = 15;
y = 3;
z = x * y + 10;

% Display variable values
disp('--- Variables and Operations ---');
fprintf('Value of x: %d\n', x);
fprintf('Value of y: %d\n', y);
fprintf('Result of z = x * y + 10: %d\n\n', z);

% Checking variable type
disp(['Class of variable z: ', class(z)]);

%% Section 3: Workspace and Command Window
% Understanding the workspace and viewing variables.

% View current variables
disp('--- Workspace Variables ---');
whos

% Clear specific variable
clear y
disp('Variable y cleared. Current Workspace:');
whos

%% Section 4: Simple Matrix Operations
% Creating and manipulating matrices.

% Matrix creation
A = [1 2 3; 4 5 6; 7 8 9];
B = [9 8 7; 6 5 4; 3 2 1];

disp('--- Matrix A ---');
disp(A);

disp('--- Matrix B ---');
disp(B);

% Matrix addition
C = A + B;
disp('Matrix Addition (A + B):');
disp(C);

% Matrix subtraction
D = A - B;
disp('Matrix Subtraction (A - B):');
disp(D);

% Scalar multiplication
E = 2 * A;
disp('Scalar Multiplication (2 * A):');
disp(E);

% Matrix multiplication
F = A * B;
disp('Matrix Multiplication (A * B):');
disp(F);

% Element-wise multiplication
G = A .* B;
disp('Element-wise Multiplication (A .* B):');
disp(G);

% Transpose of a matrix
A_transpose = A';
disp('Transpose of Matrix A:');
disp(A_transpose);

%% Section 5: Comments and Script Management
% Using comments and organizing code.

% Single-line comment: Use % for explanations.
% Multi-line comments can be added using consecutive % lines or blocks.

% Example of ignoring code execution:
% This line won’t run: result = 5 * 5;

%% Section 6: Basic Syntax Recap
% Key MATLAB syntax elements covered:
% 1. Operators: +, -, *, /, ^
% 2. Variables: Assignment and manipulation
% 3. Display Functions: disp(), fprintf()
% 4. Workspace Management: whos, clear
% 5. Simple Matrix Operations: addition, multiplication, transpose

