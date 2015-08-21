function [ letterText ] = composeAnonymousLetter( senderName, senderAddress, message )
%COMPOSEANONYMOUSLETTER creates text of a letter from a specific person
%
%   Creates the text of an anonymous letter to another
%     specific person. Word wraps to 80 characters (40 for addresses).
%
%  INPUT   senderName:        name of sender (string)
%          senderAddress:     address of sender (vertical cell array of strings)
%          message:           message of letter (string)
%    
%  OUTPUT  a vertical cell array, each element is a line of the letter
%
%  SIDE-EFFECTS   none
%
%  AUTHORS        Owen Feehan
%
    MAX_WIDTH_LETTER = 80;
    MAX_WIDTH_NAMEADDRESS = 40;     % We keep the name/address smaller

    % The header of the message
    header = createSenderHeader(senderName,senderAddress,MAX_WIDTH_NAMEADDRESS);

    % The body
    body = createBody( ...
        'To whom it concerns:', ...
        message, ...
        'Yours Sincerely,', ...
        senderName, ...
        MAX_WIDTH_LETTER ...
    );
    
    % Putting both together
    letterText = [ header; createBlankLines(2); body ];
end