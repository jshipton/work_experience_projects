function legal = OandXlegal( A )
% Obtain a list of legal moves for the noughts and crosses
% position encoded in the array A:
% -1 represents O;
%  1 represents X;
%  0 represents an empty cell.

% Count the legal moves; use count as a subscript for the output array
count = 0;

% Loop over cells in A
for r = 1:3
    for c = 1:3
        
        % A move is legal if the cell is empty
        if A(r,c) == 0
            
            % The move is legal, save it in the list
            count = count + 1;
            legal(count,1) = r;
            legal(count,2) = c;
            
        end

    end
    
end
