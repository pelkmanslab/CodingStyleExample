function [ textOut ] = createRecipientHeader( name, address, maxWidth )
%CREATERECIPIENTHEADER creates several lines describing the recipient
% 
% Takes the form:
%   NAME
%   ADDRESS
%
% wrapped to maxWidth.
%
% Returns vertical cell array of strings
%
% ASSUMPTION: date-string is always less than maxWidth, so we don't wrap
    textOut = [...
        wrapNameAddress(name,address,maxWidth);...
        currentDateString() ...
     ];
   
end

