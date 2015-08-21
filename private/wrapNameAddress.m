function [ text_out ] = wrapNameAddress( name, address, maxWidth )
%WRAPNAMEADDRESS creates several lines describing a person.
%
%
% Takes the form:
%   NAME
%   ADDRESS
%
% wrapped to maxWidth.
%
%  INPUT   name:      the name (string)
%          address    address (vertical cell array of strings)
%          maxWidth   integer
%    
%  OUTPUT  a cell array, each element is a wrapped-line
%
%  SIDE-EFFECTS   none
%
%  AUTHORS        Owen Feehan
%
    % This line is needed to use the linewrap function, as it's in
    %  a package
    import linewrap.*;
    
    wrapped_name =  linewrap(name, maxWidth);
    
    % So we have a single argument function for line wrapping
    % See 'Anonymous functions'
    linewrap_curry =  @(x) linewrap(x, maxWidth );
    
    % We wrap each line of the address
    wrapped_address = cellfun( linewrap_curry, address, 'UniformOutput', false );
    
    % Flatten the cell array to remove nested cell-arrays
    wrapped_address = vertcat(wrapped_address{:});
    
    text_out = [ wrapped_name; wrapped_address ];
end

