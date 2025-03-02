%% KOM1012_Week2_Notes.m
% This script covers ALL topics from KOM1012_Week2.pdf, including:
% - Variables, vectors, matrices
% - Colon operator, linspace/logspace
% - Subscripts, arithmetic operations, submatrices
% - Built-in functions (math, matrix, polynomials)
% - Constants, I/O, formatting, and more.

%% ==================== 1. Variables in MATLAB ====================
% Rules: Start with letter, case-sensitive, use underscores/digits.
validVar = 10;       % Valid name
% 2invalidVar = 20;  % Invalid (commented to avoid error)

% Case sensitivity
a = 5;
A = 10;  % Different from 'a'

% Workspace commands
who       % List variables
whos      % List variables with details

%% ==================== 2. Vectors ====================
% Row and column vectors
rowVec = [2, 4, -5, 0, 10];     % Row vector
colVec = [2; 4; -5; 0; 10];     % Column vector

disp('Row vector:'); disp(rowVec);
disp('Column vector:'); disp(colVec);

%% ==================== 3. Colon Operator ====================
x1 = 1:10;          % 1,2,...,10
x2 = 1:0.5:4;       % 1,1.5,...,4
x3 = 10:-1:1;       % 10,9,...,1
x4 = 1:2:6;         % 1,3,5

disp('Colon operator examples:');
disp(x1); disp(x2); disp(x3); disp(x4);

%% ==================== 4. linspace and logspace ====================
% Linear and logarithmic spacing
y1 = linspace(0, pi/2, 5);   % 5 points from 0 to π/2
y2 = logspace(1, 3, 4);      % 4 points from 10^1 to 10^3

disp('linspace:'); disp(y1);
disp('logspace:'); disp(y2);

%% ==================== 5. Transposing Vectors ====================
row = [1, 2, 3];
col = row';  % Transpose to column

disp('Transposed vector:'); disp(col);

%% ==================== 6. Subscripts ====================
v = [0, 5, 10, 15, 20, 25, 30];
disp('Subscripts:');
disp(v(3));          % Third element (10)
disp(v(2:4));        % Elements 2-4: [5,10,15]
disp(v(1:2:6));      % Elements 1,3,5: [0,10,20]
disp(v([1,7,3]));    % Elements 1,7,3: [0,30,10]

%% ==================== 7. Matrices ====================
% Creating matrices
A = [1, 2, 3; 4, 5, 6];  % 2x3 matrix
A_transposed = A';        % Transpose
disp('Original matrix:'); disp(A);
disp('Transposed matrix:'); disp(A_transposed);

% Accessing elements
disp('Element (2,3) of A:'); disp(A(2,3));  % Output: 6

%% ==================== 8. Built-in Matrix Functions ====================
% zeros, ones, eye, size, length
Z = zeros(3);       % 3x3 zeros matrix
O = ones(2, 4);     % 2x4 ones matrix
I = eye(3);         % 3x3 identity matrix

disp('Zeros matrix:'); disp(Z);
disp('Ones matrix:'); disp(O);
disp('Identity matrix:'); disp(I);

% Size and length
disp('Size of A:'); disp(size(A));
disp('Length of rowVec:'); disp(length(rowVec));

%% ==================== 9. Arithmetic Operations ====================
% Element-wise and matrix operations
X = [2, 4; 6, 8];
Y = [2, 8; 5, 9];

% Element-wise operations
add = X + Y;        % Addition
mult = X .* Y;      % Element-wise multiplication

% Matrix operations
matMult = X * Y;    % Matrix multiplication

disp('Element-wise addition:'); disp(add);
disp('Element-wise multiplication:'); disp(mult);
disp('Matrix multiplication:'); disp(matMult);

%% ==================== 10. Submatrices ====================
% Accessing parts of matrices
matrix = [1,2,3; 4,5,6; 7,8,9; 10,11,12];
submatrix1 = matrix(:,1);       % First column
submatrix2 = matrix(2,:);       % Second row
submatrix3 = matrix(2:4,1:2);   % Rows 2-4, columns 1-2

disp('First column:'); disp(submatrix1);
disp('Second row:'); disp(submatrix2);
disp('Submatrix (2:4,1:2):'); disp(submatrix3);

%% ==================== 11. Constants & Permanent Variables ====================
disp('Constants:');
disp(['pi: ', num2str(pi)]);        % Pi
disp(['Infinity: ', num2str(Inf)]); % Infinity
disp(['NaN: ', num2str(NaN)]);      % Not-a-Number
disp(['realmax: ', num2str(realmax)]); % Largest floating-point number
disp(['realmin: ', num2str(realmin)]); % Smallest floating-point number

% Timing code execution
tic;
A = rand(1000);
B = rand(1000);
C = A * B;
toc;

%% ==================== 12. Elementary Math Functions ====================
% sum, prod, max, min, mean, factorial, primes, gcd, lcm
data = [1, 2, 3; 4, 5, 6; 7, 8, 9];
disp('Sum of columns:'); disp(sum(data));
disp('Product of columns:'); disp(prod(data));
disp('Max of columns:'); disp(max(data));
disp('Min of columns:'); disp(min(data));
disp('Mean of columns:'); disp(mean(data));

% Advanced functions
disp('Factorial of 5:'); disp(factorial(5));
disp('Primes ≤10:'); disp(primes(10));
disp('GCD of 30 and 20:'); disp(gcd(30, 20));
disp('LCM of 30 and 20:'); disp(lcm(30, 20));

%% ==================== 13. Complex Numbers ====================
z = 3 + 4i;                 % Complex number
z_real = real(z);           % Real part
z_imag = imag(z);           % Imaginary part
z_conj = conj(z);           % Complex conjugate

disp('Complex number:'); disp(z);
disp('Real part:'); disp(z_real);
disp('Imaginary part:'); disp(z_imag);
disp('Conjugate:'); disp(z_conj);

%% ==================== 14. Trigonometric Functions ====================
angle_rad = pi/2;
angle_deg = 90;

% Radians vs degrees
sin_rad = sin(angle_rad);       % Sine in radians
sin_deg = sind(angle_deg);      % Sine in degrees
sinh_val = sinh(1);             % Hyperbolic sine

disp('sin(π/2):'); disp(sin_rad);
disp('sind(90):'); disp(sin_deg);
disp('sinh(1):'); disp(sinh_val);

%% ==================== 15. Exponential/Logarithmic Functions ====================
val = 2;
sqrt_val = sqrt(val);       % Square root
exp_val = exp(val);         % Exponential
log_val = log(val);         % Natural log
log10_val = log10(100);     % Base-10 log

disp(['sqrt(2): ', num2str(sqrt_val)]);
disp(['exp(2): ', num2str(exp_val)]);
disp(['log(2): ', num2str(log_val)]);
disp(['log10(100): ', num2str(log10_val)]);

%% ==================== 16. Polynomial Functions ====================
p = [1, -3, 2];            % Polynomial: x^2 - 3x + 2
roots_p = roots(p);         % Roots: 1 and 2
p_der = polyder(p);         % Derivative: 2x - 3
p_int = polyint(p, 0);      % Integral with constant 0

disp('Polynomial roots:'); disp(roots_p);
disp('Derivative:'); disp(p_der);
disp('Integral:'); disp(p_int);

%% ==================== 17. Matrix Operations ====================
% Determinant, inverse, norm, trace, eigenvalues
M = [1, 2, 3; 4, 5, 6; 7, 8, 10];
det_M = det(M);             % Determinant
inv_M = inv(M);             % Inverse
norm_M = norm(M);           % Matrix norm
trace_M = trace(M);         % Trace
[eigVec, eigVal] = eig(M);  % Eigenvalues/Vectors

disp('Determinant:'); disp(det_M);
disp('Inverse:'); disp(inv_M);
disp('Norm:'); disp(norm_M);
disp('Trace:'); disp(trace_M);
disp('Eigenvalues:'); disp(eigVal);

%% ==================== 18. Solving Linear Systems ====================
A = [3, 5, 1; 1, 1, 0; 0, 3, 5];
B = [16; 3; 21];
X = A \ B;  % Solve AX = B

disp('Solution to linear system:');
disp(X);

%% ==================== 19. Input/Output & Formatting ====================
% User input
userVal = input('Enter a number: ');

% Formatted output
fprintf('You entered: %f\n', userVal);
fprintf('Exponential: %e\n', userVal);
fprintf('Octal: %o\n', userVal);
fprintf('Hexadecimal: %x\n', userVal);

% Format commands
format short; disp(pi);    % 3.1416
format long; disp(pi);     % 3.141592653589793
format rat; disp(pi);      % 355/113

%% ==================== 20. M-Files & Scripts ====================
% This section is the script itself. Save and run this file!

%% Output_Options_Examples.m
% This script demonstrates MATLAB's output options, including:
% - disp() function
% - fprintf() function with formatting
% - Examples of different format specifiers (%d, %f, %e, %g, %o, %x, etc.)

%% ==================== 1. disp() Function ====================
% The disp() function displays arrays or text without printing the variable name.
array = [1, 2, 3; 4, 5, 6];
text = 'Hello, MATLAB!';

disp('Using disp() for arrays:');
disp(array);

disp('Using disp() for text:');
disp(text);

%% ==================== 2. fprintf() Function ====================
% The fprintf() function provides more control over output formatting.
% It uses format specifiers like %f, %d, %e, %g, %o, %x, etc.

% Example 1: Basic fprintf() usage
x = 5;
fprintf('The value of x is %f\n', x);  % %f for floating-point
fprintf('The value of x is %d\n', x);  % %d for integer
fprintf('The value of x is %e\n', x);  % %e for exponential notation
fprintf('The value of x is %g\n', x);  % %g for compact format

% Example 2: Using \n for newlines
fprintf('This is the first line.\nThis is the second line.\n');

%% ==================== 3. Format Specifiers ====================
% Below are examples of different format specifiers for fprintf().

% %d: Base 10 (integer)
a = [1, 9, 23];
fprintf('%d\n', a);  % Prints integers
% Output:
% 1
% 9
% 23

% %o: Base 8 (octal)
fprintf('%o\n', a);  % Prints octal values
% Output:
% 1
% 11
% 27

% %x: Base 16 (hexadecimal, lowercase)
fprintf('%x\n', a);  % Prints hexadecimal values
% Output:
% 1
% 9
% 17

% %X: Base 16 (hexadecimal, uppercase)
fprintf('%X\n', a);  % Prints hexadecimal values in uppercase
% Output:
% 1
% 9
% 17

% %f: Fixed-point notation
b = [1.02, 3.04, 5.06];
fprintf('%f\n', b);  % Prints floating-point numbers
% Output:
% 1.020000
% 3.040000
% 5.060000

% %e: Exponential notation
fprintf('%e\n', b);  % Prints in exponential notation
% Output:
% 1.020000e+00
% 3.040000e+00
% 5.060000e+00

% %g: Compact format (automatically chooses %f or %e)
fprintf('%g\n', b);  % Prints in compact format
% Output:
% 1.02
% 3.04
% 5.06

%% ==================== 4. Advanced fprintf() Examples ====================
% Example 1: Displaying multiple values with mixed formats
x = 9.9;
y = 9900;
B = [8.87, 7.7; 8800, 7700];

fprintf('X is %f meters or %f mm\n', x, y);  % Floating-point format
fprintf('X is %f meters or %f mm\n', B(1,1), B(1,2));  % First row of B
fprintf('X is %f meters or %f mm\n', B(2,1), B(2,2));  % Second row of B

% Example 2: Displaying large numbers
x = [2, 987654321];
fprintf('The value of x: %f\n', x(1));  % Floating-point format
fprintf('The value of x: %e\n', x(2));  % Exponential format
fprintf('The value of x: %g\n', x(2));  % Compact format

% Example 3: Displaying text and numbers together
name = 'Alice';
age = 30;
fprintf('%s is %d years old.\n', name, age);  % %s for string, %d for integer

%% ==================== 5. Special Characters ====================
% Special characters like \n (newline), \t (tab), and %% (percent sign) can be used.

% Example: Using \t for tab spacing
fprintf('Name:\t%s\nAge:\t%d\n', name, age);

% Example: Displaying a percent sign
percentage = 75;
fprintf('Completion: %d%%\n', percentage);  % Use %% to print %

%% ==================== 6. Summary ====================
disp('All output options demonstrated! Review the code for more examples.');