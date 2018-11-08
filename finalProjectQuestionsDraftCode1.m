function [output] = firstLevel(answerChoice)
%Output = what's displayed; answerChoice = choice chosen for each question
%{
Just as reference, I am going to be putting the questions and answer
choices in comments because the text will simply be copied into the GUI;
there is no point for me writing it as a string as it will be useless.
Also, the code isn't necessarily going to be accurate but it's enough to
know how to properly implement it later on into the GUI code.
%}
% Each question and answer choice MUST be in its own GUI
%{
Level 1: Which area(s) do computers specialize in?
A Accuracy but not precision
B Accuracy and precision
C Precision but not accuracy
D Neither accuracy nor precision
%}
if answerChoice ~= B 
    pause(5); %GUI turns red afterwards
    output = 'Incorrect. The correct answer was B. You have earned a total of $0. Game over!';
else
    pause(5); %GUI turns green afterwards
    output = 'Correct! So far, you have a total of $100,000! Move on to the next level!';
    %Should either be a GUI that enables player to move on or it does that
    %automatically
    secondLevel;
end
function secondLevel
%{
Level 2: How many values can one byte represent?
A 256
B 64
C 8
D 16
%}
if answerChoice ~= A
    pause(5) %GUI turns red (same pattern happens)
    output = 'Incorrect. The correct answer was A. You have earned a total of $100,000. Game over!';
else %GUI turns green (same patter happens)
    pause(5)
    output = 'Correct! You have a total of $200,000! Move on to the next level!';
    thirdLevel
end
function thirdLevel
%{
Level 3: Which of the following statements is correct?
A Function "clear" clears the workspace
B Function "clc" clears the editor
C Function "clc" clears the command window
D Both A and C
%}
if answerChoice ~= D
    pause(5)
    output = 'Incorrect. The correct answer was D. You have earned a total of $200,000. Game over!';
else
    pause(5)
    output = 'Correct! You have a total of $300,000! Move on to the next level!';
    fourthLevel
end
function fourthLevel
%{
Level 4: Who is the best T.A. for Intro to Computers for Engineers?
A Siddarth Tsianikas
B Matthew Putnins
C Junyu Qian
D Siddarth Rupavatharam
%}
if answerChoice ~= D
    pause(5)
    output = 'Incorrect. The correct answer was D. You have earned a total of $300,000. Game over!';
else
    pause(5)
    output = 'Correct! You have a total of $400,000! Move on to the next level!';
    fifthLevel
end
function fifthLevel
%{
Level 5: Which command will return the corner elements of a 10-by-10 matrix A?
A A([1,end], [1,end])
B A([1,1], [end,end])
C A({[1,1], [1,end], [end,1], [end,end]})
D A(1:end, 1:end)
%}
if answerChoice ~= A
    pause(5)
    output = 'Incorrect. The correct answer was A. You have earned a total of $400,000. Game over!';
else
    pause(5)
    output = 'Correct! You have a total of $500,000! Move on to the next level!';
    sixthLevel
end
function sixthLevel
%{
Level 6: Which command will completely remove the last cell of a cell-array C?
A C{end} = [];
B C[end] = [];
C C(end) = [];
D C{end} = {[]};
%}
if answerChoice ~= C
    pause(5)
    output = 'Incorrect. The correct answer was C. You have earned a total of $500,000. Game over!';
else
    pause(5)
    output = 'Correct! You have a total of $600,000! Move on to the next level!';
    seventhLevel
end
function seventhLevel
%{
Level 7: What is the binary representation of the number 345?
A 101011001
B 1101101010
C 110011
D 11001110
%}
if answerChoice ~= A
    pause(5)
    output = 'Incorrect. The correct answer was A. You have earned a total of $600,000. Game over!';
else
    pause(5)
    output = 'Correct! You have a total of $700,000! Move on to the next level!';
    eighthLevel
end
%{
The code found below will be for each lifeline. This won't show how it
can only be used once, but it should be enough to understand how it would
work. Also, the code will be super general as the code will be slightly
different for each question (e.g. 50-50 will be different depending on
correct answer).
%}
