function winning = OandXwinning( A )
% Obtain a list of winning moves for X for the noughts and crosses
% position encoded in the array A:
% -1 represents O;
%  1 represents X;
%  0 represents an empty cell.

% Count the winning moves; use count as a subscript for the output array
count = 0;

% Loop over cells in A
for c = 1:3
    for r = 1:3
        
        % A move is legal if the cell is empty
        if A(r,c) == 0
            
            % The move is legal. Now check if it wins
            win = 0;
            
            % Check this row: how many X's are there?
            nx = sum(A(r,:));
            if nx == 2
                win = 1; 
            end
            
            % Check this column: how many X's are there?
            nx = sum(A(:,c));
            if nx == 2
                win = 1;
            end
            
            % Are we on the first diagonal?
            if r == c
                % How many X's are on this diagonal?
                nx = sum(diag(A));
                if nx == 2
                    win = 1;
                end
            end
            
            % Are we on the second diagonal?
            if r == 4 - c
                % How many X's are on this diagonal?
                nx = sum(diag(A(:,3:-1:1)));
                if nx == 2
                    win = 1;
                end
            end
            
            % If the move is a win then save it in the list
            if win
                count = count + 1;
                winning(count,1) = r;
                winning(count,2) = c;
            end
            
        end

    end
    
end


end
