function [ textOut ] = createSenderHeader( name, address, maxWidth )
%CREATESENDERHEADER creates several lines describing the sender
% 
% Takes the form:
%   NAME
%   ADDRESS
%   DATE
%
% wrapped to maxWidth.
%
% Returns char-array
%
    textOut = wrapNameAddress(name,address,maxWidth);
end

