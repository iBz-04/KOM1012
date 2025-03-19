% PROBLEM SOLVING & ALGORITHM DEVELOPMENT
%
% Introduction
% An algorithm is a systematic logical step-by-step procedure for solving a problem.
% When we solve a problem using a computer, we first need to design an algorithm concerning the problem.
% Generally, we use flowcharts or pseudocode in the development phase of an algorithm.

% Solving problems with MATLAB
% To solve a problem, use the following problem solving methodology
% 1. State the Problem
% 2. Describe the Input and Output
% 3. Develop a Hand Example
% 4. Develop a MATLAB Solution
% - First, clear the screen and memory: clear, clc
% - Now perform the following calculations in the command window or in the editor window
% 5. Test the solution

% Solving problems with MATLAB Example
% Problem: For the initially given parameters
% - vo: the magnitude of initial velocity vector
% - ho: initial height
% - theta0: the angle of the velocity vector with the horizontal axis
% - g: gravity
% calculate the final velocity vector (its magnitude as well as its angle with the horizontal axis (v, theta)),
% the time passes during this travel (t), the horizontal distance it travels (x), and the maximum height it reaches to (h).

% 1) State the Problem:
% For the initially given parameters
% - v0: the magnitude of initial velocity vector,
% - h0: initial height,
% - theta0: the angle of the velocity vector with the horizontal axis,
% - g: gravity;
% calculate the
% - final velocity vector (its magnitude as well as its angle with the horizontal axis (v, theta)),
% - the time passes during this travel (t),
% - the horizontal distance it travels (x),
% - the maximum height it reaches to (h).

% 2) Describe the Input and Output:
% In this example
% - v0, h0, theta0 and g are the inputs.
% - (v, theta), t, x, and h are the outputs.

% 3) Develop a Hand Example (use mathematical expressions):
% Let, PI=3.141592, g=9.8, v0=20, theta0=75 (in degrees), h0=30.
% Then,
% v0y = v0 * sin(PI * theta0 / 180) and v0x = v0 * cos(PI * theta0 / 180).
% t_rise = (v0y - 0) / g
% h_rise = 0.5 * m * (v0y)^2 / g
% h_fall = h_rise + h0 and h_fall = 0.5 * m * (vy)^2 / g
% vy = sqrt(2 * g * h_fall)
% t_fall = (vy - 0) / g
% d = v0x * (t_rise + t_fall)
% vx = v0x
% theta = 180 * atan(-vy / vx) / PI

% 4) Develop a MATLAB solution:

PI=3.141592;
G=9.8;
v0=20; theta0=75; h0=30;
v0y=( v0 * sin(PI*theta0/180.0) );
v0x=( v0 * cos(PI*theta0/180.0) );
t_rise=v0y/G;
h_rise=0.5*(v0y*v0y)/G;
h_fall=h_rise+h0;
vy=sqrt(2*G*h_fall);
t_fall=vy/G;
d=v0x*(t_rise+t_fall);
vx=v0x;
theta=180*atan(-vy/vx)/PI;

% 5) Test the solution:
% We can run the commands and output the solution as:
% For a given set of initial values:
% Initial Velocity Magnitude: 20[m/s]
% Initial Velocity Angle with the horizontal: 75[degrees]
% Initial height: 30[m]
% Gravity: 9.8[m/(s^2)]
% Final parameter set is:
% Velocity Magnitude: 31.4325[m/s]
% Velocity Angle with the horizontal: -80.5212
% Travel time: 5.1349[s]
% Maximum height it reaches to: 49.0411[m]
% The horizontal distance it travels: 26.5801[m]

% Flowcharts
% Flowchart is a tool to distinguish the problem into smaller problems and to order them sufficiently to obtain the solution.
% We use shapes such as boxes, diamonds, etc. and arrows to build flowcharts.
% Mostly used shapes are given as follows:
%
% | Shape | Name | Description |
% | :--: | :--: | :--: |
% |  | Flow line |  |
% |  | Terminal | Start or stop |
% |  | Decision | Yes (true) or no (false) question. Ex. Is k equal to 10 ? Or k=10 ? |
% |  | Input / Output | Recieve and display data. Ex. get input from keyboard; display it. |
% |  | Process | Perform something. Ex. add a to b. |

% Example - 1
% Ask user to input a number between 1-10.
% Kullanicidan 1-10 arasında bir sayı girmesini isteyiniz.
% 1. start
% 2. get the value (k)
% 3. if k is smaller than 1 , go to step-4, otherwise go to step-5
% 4. display 'you entered a wrong number' and go to step-2
% 5. if k is larger than 10 , go to step-4
% 6. stop

% Example - 2
% Sum up numbers from 1 to 5. 1'den 5'e kadar sayıları toplayınız.
% 1. start
% 2. sum = 0
% 3. sum = sum + 1
% 4. sum = sum + 2
% 5. sum = sum + 3
% 6. sum = sum + 4
% 7. sum = sum + 5
% 8. output the sum
% 9. stop

sum = 0;
sum = sum + 1;
sum = sum + 2;
sum = sum + 3;
sum = sum + 4;
sum = sum + 5;
disp(sum);

% Example - 2 (Alternative)
% Sum up numbers from 1 to 5. 1'den 5'e kadar sayıları toplayınız.
% 1. start
% 2. sum = 0
% 3. k = 1
% 4. sum = sum + k
% 5. k = k + 1
% 6. if k < 6 go to step-4
% 7. output the sum
% 8. stop

sum = 0;
k = 1;
sum = sum + k;
k = k + 1;
if k < 6
    sum = sum + k;
    k = k + 1;
end
if k < 6
    sum = sum + k;
    k = k + 1;
end
if k < 6
    sum = sum + k;
    k = k + 1;
end
if k < 6
    sum = sum + k;
    k = k + 1;
end
disp(sum);

% Example - 3
% Ask user to input a non-negative integer and compute its factorial. Kullanicidan negatif olmayan bir tamsayı girmesini ve faktöriyelini hesaplamasını isteyiniz.
% 1. start
% 2. display 'enter a non-negative integer', get the value (k)
% 3. if k is negative or it is not an integer, go to step-2
% 4. fact = 1
% 5. if k is less than or equal to 1 , go to step-9
% 6. fact = fact * k
% 7. k = k - 1
% 8. if k is larger than 1 , go to step-6
% 9. output fact
% 10. stop

k = input('Enter a non-negative integer: ');
while k < 0 || k ~= floor(k)
    k = input('Enter a non-negative integer: ');
end
fact = 1;
if k > 1
    fact = fact * k;
    k = k - 1;
end
if k > 1
    fact = fact * k;
    k = k - 1;
end
if k > 1
    fact = fact * k;
    k = k - 1;
end
if k > 1
    fact = fact * k;
    k = k - 1;
end
disp(fact);

% Example - 4
% Find the largest among three different numbers entered by the user. Kullanıcı tarafından girilen üç farklı sayı arasından en büyüğünü bulun.
% 1. start
% 2. get the values of A, B, C
% 3. if A > B and A > C, go to step-9
% 4. max = A;
% 5. else if B > C, go to step-9
% 6. max = B;
% 7. else, go to step-9
% 8. max = C;
% 9. output max
% 10. stop

A = input('Enter the first number: ');
B = input('Enter the second number: ');
C = input('Enter the third number: ');
if A > B && A > C
    max = A;
elseif B > C
    max = B;
else
    max = C;
end
disp(max);

% Example - 5
% Find all the real roots of the equation ax^2 + bx + c = 0. The coefficients will be entered by the user.
% ax^2 + bx + c = 0 denkleminin tüm reel köklerini bulun. Katsayılar kullanıcı tarafından girilecektir.
% 1. start
% 2. get the values of a, b, c
% 3. D = b^2 - 4 * a * c;
% 4. if D > 0, go to step-10
% 5. x1 = (-b + sqrt(D)) / (2 * a);
% 6. x2 = (-b - sqrt(D)) / (2 * a);
% 7. if D = 0, go to step-10
% 8. x1 = -b / (2 * a);
% 9. if D < 0,
% 10. disp('No real poles.')
% 11. output x1, x2
% 12. stop

a = input('Enter the coefficient a: ');
b = input('Enter the coefficient b: ');
c = input('Enter the coefficient c: ');
D = b^2 - 4 * a * c;
if D > 0
    x1 = (-b + sqrt(D)) / (2 * a);
    x2 = (-b - sqrt(D)) / (2 * a);
    disp(['The roots are: x1 = ', num2str(x1), ', x2 = ', num2str(x2)]);
elseif D == 0
    x1 = -b / (2 * a);
    disp(['The root is: x1 = ', num2str(x1)]);
else
    disp('No real roots.');
end

% Example - 6
% Ask the user to input a year, determine if it is a leap year or not. Kullanıcının girdiği yılın artık yıl olup olmadığını belirleyiniz.
% 1. start
% 2. get the year, x
% 3. if mod(x, 4) = 0, go to step 4 , otherwise go to step 7
% 4. if mod(x, 100) = 0, go to step 5 , otherwise go to step 6
% 5. if mod(x, 400) = 0, go to step 6 , otherwise go to step 7
% 6. disp('It is a leap year.')
% 7. disp('It is not a leap year.')
% 8. stop

x = input('Enter a year: ');
if mod(x, 4) == 0
    if mod(x, 100) == 0
        if mod(x, 400) == 0
            disp('It is a leap year.');
        else
            disp('It is not a leap year.');
        end
    else
        disp('It is a leap year.');
    end
else
    disp('It is not a leap year.');
end

% Example - 7
% Determine the number of terms needed for the sum of the harmonic series to exceed a given integer K entered by the user:
% Aşağıdaki gibi bir harmonik serinin toplamının kullanıcı tarafından girilen belirli bir K tamsayısını aşması için gereken terim sayısını belirleyiniz.
% 1. start
% 2. get the number, K
% 3. sum = 0; n = 1;
% 4. if sum <= K, go to step 5, otherwise go to step 6
% 5. sum = sum + (1 / n); n = n + 1; go to step 4
% 6. output n
% 7. stop

K = input('Enter a number K: ');
sum = 0;
n = 1;
while sum <= K
    sum = sum + (1 / n);
    n = n + 1;
end
disp(['The number of terms needed for the sum to exceed ', num2str(K), ' is: ', num2str(n - 1)]);
