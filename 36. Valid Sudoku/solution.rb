# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
    for row in 0..8 do
        return false if !check_row(board, row)
    end
    for column in 0..8 do
        return false if !check_column(board, column)
    end
    for row in 0..2 do
        for column in 0..2 do
            return false if !check_square(board, column * 3, row * 3)
        end
    end
    return true
end
    
def check_row(board, row)
    set = Set[]
    for column in 0..8 do
        if board[row][column] == '.'
            next
        end
        if set.include?(board[row][column])
            return false
        else
            set.add(board[row][column])
        end
    end
    return true
end
    
def check_column(board, column)
    set = Set[]
    for row in 0..8 do
        if board[row][column] == '.'
            next
        end
        if set.include?(board[row][column])
            return false
        else
            set.add(board[row][column])
        end
    end
    return true
end
    
def check_square(board, column, row)
    set = Set[]
    
    3.times do
        temp_col = column
        3.times do
            if board[row][temp_col] == '.'
                temp_col += 1
                next
            end
            if set.include?(board[row][temp_col])
                return false
            else
                set.add(board[row][temp_col])
            end
            temp_col += 1
        end
        row += 1
    end
    return true
end