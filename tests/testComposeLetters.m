% See http://ch.mathworks.com/help/matlab/matlab_prog/write-function-based-unit-tests-.html
%  for introduction to Matlab testing (with functions)
%
function [ tests ] = testComposeLetters( input_args )
%TESTCOMPOSELETTERS testing of compose letter functionality

    %
    %  This turns all our other local functions into tests
    %
    tests = functiontests(localfunctions);
end


function test1ComposePersonalLetter( testCase )

    % A prior letter was serialized previously using the save command
    %   save('test2.mat','letter')
    expectedLetter = load('test1.mat','letter');
    expectedLetter = expectedLetter.letter;

    actualLetter = composePersonalLetter( ...
        'Ms. Madaleine Meerkat', ...
        {'Zürichbergstrasse 221';'8044 Zurich'}, ...
        'You have won the lottery! Congratulations! Your prize is 100,000 meerkat-dollars. We look forward to you collecting your prize at a forthcoming ceremony', ...
        'Roger Federer', ...
        {'Owenweg 11, 8038 Zurich';'8044 Zurich'} ...
    );

    % Compares the saved-version with the current version
    verifyEqual(testCase,actualLetter,expectedLetter);
end



function test2ComposeAnonymousLetter( testCase )

    % A prior letter was serialized previously using the save command e.g.
    %   save('test2.mat','letter')
    expectedLetter = load('test2.mat','letter');
    expectedLetter = expectedLetter.letter;

    actualLetter = composeAnonymousLetter( ...
        'Ms. Madaleine Meerkat', ...
        {'Zürichbergstrasse 221';'8044 Zurich'}, ...
        'We invite you to play the Meerkat Loettery? The grand prize is 100,000 meerkat-dollars. For more information, go to the nearest zoo, and find the meerkats!' ...
    );

    % Compares the saved-version with the current version
    verifyEqual(testCase,actualLetter,expectedLetter);
end