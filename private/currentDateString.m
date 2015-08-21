function [ str ] = currentDateString()
%CURRENTDATESTRING A string describing the current date
%   A string describing the current date in the form DD/MM/YY
%
    str = datestr(now,'mm/dd/yy');
end

