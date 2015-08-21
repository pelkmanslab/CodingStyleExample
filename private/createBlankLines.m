function [ text ] = createBlankLines( num )
%CREATEBLANKLINES Creates a char-array with num empty lines

    % We use a single 'space' character for an empty line
    text_chararray = repmat(' ', num, 1);
    text = cellstr( text_chararray );
end

