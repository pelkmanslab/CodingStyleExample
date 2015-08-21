function [ text ] = createBlankLines( num )
%CREATEBLANKLINES Creates a char-array with num empty lines
%
% Returns vertical cell array of strings
%
    % We use a single 'space' character for an empty line
    text_chararray = repmat(' ', num, 1);
    text = cellstr( text_chararray );
end

