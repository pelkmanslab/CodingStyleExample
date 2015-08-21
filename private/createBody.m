function [ textOut ] = createBody( openingLine, message, closingLine, senderName, width )
%CREATEBODY Creates the main body of a letter
%
%   Creates the main body of a letter, as follows:
%        Dear XXXX,             (opening-line)
%                               (blank-line)
%        We are writing...      (message)
%                               (blank-line)
%        Sincerely,             (closing-line)
%                               (blank-line)
%        YYYYY                  (sender-name)
%    
%
%  INPUT   openingLine:     some kind of saluation ('Dear XXX', etc.)
%          message:         main-text of the letter
%          closingLine:     first-part of the sign off ('Sincerely', etc.
%          senderName:      the name of the sender of the letter
%          width:           how many characters to word-wrap to
%    
%  OUTPUT  a cell array, each element is a line
%
%  SIDE-EFFECTS   none
%
%  AUTHORS        Owen Feehan
%
    % ASSUMPTION senderName w

    import linewrap.*;
    textOut = [...
        linewrap(openingLine,width); ...
        createBlankLines(1); ...
        linewrap(message,width)
        createBlankLines(1); ...
        linewrap(closingLine,width); ...
        createBlankLines(1); ...
        linewrap(senderName,width)
     ];
end

