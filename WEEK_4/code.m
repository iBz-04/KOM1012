% KOM1012 Week 4: Control Structures, Relational & Logical Operators, Selection Structures
% This script demonstrates sequence, selection, and repetition structures,
% relational and logical operators, if statements, and switch-case structures
% as covered in the Week 4 lecture material.

%% 1. Sequence Structure
% A sequence is a list of commands executed one after another
disp('Sequence Structure Example:');
x = 5;
y = 1;
z = x + y; % Simple sequential operation
disp(['Sum of x and y is: ', num2str(z)]);

%% 2. Relational Operators
% Relational operators compare values and return logical results (0 or 1)
disp('Relational Operators Example:');
% Scalar comparison
x = 5;
y = 1;
result = x < y;
disp(['Is x < y? ', num2str(result)]); % Should return 0 (false)

% Matrix comparison
x = 1:5;
y = x - 4;
result = x < y;
disp('Matrix comparison x < y:');
disp(result); % Returns [0 0 0 0 0]

x = [1, 2, 3, 4, 5];
y = [-2, 0, 2, 4, 6];
result = x < y;
disp('Another matrix comparison x < y:');
disp(result); % Returns [0 0 0 0 1]

% Other relational operators
disp('Testing other relational operators:');
disp(['5 == 6: ', num2str(5 == 6)]); % 0
disp(['''A'' < ''Z'': ', num2str('A' < 'Z')]); % 1
disp(['5 > 6: ', num2str(5 > 6)]); % 0
disp(['5 >= 6: ', num2str(5 >= 6)]); % 0
disp(['5 < 6: ', num2str(5 < 6)]); % 1
disp(['6 <= 6: ', num2str(6 <= 6)]); % 1

%% 3. Logical Operators
% Logical operators combine conditions
disp('Logical Operators Example:');
x = [1, 2, 3, 4, 5];
y = [-2, 0, 2, 4, 6];
z = [8, 8, 8, 8, 8];
result = (z > x) & (z > y);
disp('z > x AND z > y:');
disp(result); % Returns [1 1 1 1 1]

result = (x > y) | (x > z);
disp('x > y OR x > z:');
disp(result); % Returns [1 1 1 0 0]

% Testing logical functions
disp(['and(1,0): ', num2str(and(1,0))]); % 0
disp(['and(1,1): ', num2str(and(1,1))]); % 1
disp(['or(0,0): ', num2str(or(0,0))]); % 0
disp(['or(1,0): ', num2str(or(1,0))]); % 1
disp(['not(5): ', num2str(not(5))]); % 0
disp(['not(0): ', num2str(not(0))]); % 1
disp(['xor(5,1): ', num2str(xor(5,1))]); % 0
disp(['xor(0,3): ', num2str(xor(0,3))]); % 1

%% 4. Selection Structures: Simple if Statement
% Executes statements if a condition is true
disp('Simple if Statement Example:');
G = 25;
if G < 50
    disp('G is a small value equal to:');
    disp(G);
end

% With a matrix (condition must be true for all elements)
G = 0:10:80;
if G < 50
    disp('This will not display because G has elements >= 50');
end

%% 5. Selection Structures: if-else Statement
% Executes one set of statements if true, another if false
disp('if-else Statement Example:');
x = 0;
if x > 0
    result = log(x);
    disp(['Log of x is: ', num2str(result)]);
else
    disp('The input to the log function must be positive');
end

% With a matrix
x = 0:0.5:2;
if x > 0
    disp('This will not display because not all elements are > 0');
else
    disp('The input to the log function must be positive');
end

%% 6. Selection Structures: if-elseif-else Statement
% Checks multiple conditions in sequence
disp('if-elseif-else Statement Example:');
age = 17;
if age < 16
    disp('Sorry - You''ll have to wait');
elseif age < 18
    disp('You may have a youth license');
elseif age < 70
    disp('You may have a standard license');
else
    disp('You may need additional testing');
end

% Equivalent structure using nested if statements
disp('Nested if equivalent:');
if age < 16
    disp('Sorry - You''ll have to wait');
else
    if age < 18
        disp('You may have a youth license');
    else
        if age < 70
            disp('You may have a standard license');
        else
            disp('You may need additional testing');
        end
    end
end

%% 7. Selection Structures: Grade Example
% Demonstrates if-elseif-else for assigning grades
disp('Grade Assignment Example:');
grade = 85;
if grade > 90
    disp('A');
elseif grade > 80
    disp('B');
elseif grade > 70
    disp('C');
elseif grade > 60
    disp('D');
else
    disp('F');
end

%% 8. switch-case Structure
% Selects a path based on a variable's value
disp('switch-case Structure Example:');
city = 'Boston'; % Could use input('Enter city: ','s') for interactive input
switch city
    case 'Boston'
        disp('$345');
    case 'Denver'
        disp('$150');
    case 'Honolulu'
        disp('Stay home and study');
    otherwise
        disp('Not on file');
end

%% 9. Repetition Structure (Basic Example)
% Note: Repetition is mentioned but not detailed in the document, so a simple loop is included
disp('Repetition Structure Example:');
for i = 1:5
    disp(['Loop iteration: ', num2str(i)]);
end