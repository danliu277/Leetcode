# @param {Character[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def solve_sudoku(board)
    empty = find_empty(board)
    return true if empty.length == 0
    row = empty[0]
    col = empty[1]
    for num in 1..9 do
        if check_valid_num(board, row, col, num.to_s)
            board[row][col] = num.to_s
            if solve_sudoku(board)
                return true
            else
                board[row][col] = '.'
            end
        end
    end
    return false
end

def check_row_num(board, row, num)
    for column in 0..8 do
        next if board[row][column] == '.'
        return false if board[row][column] == num
    end
    return true
end
    
def check_column_num(board, column, num)
    for row in 0..8 do
        next if board[row][column] == '.'
        return false if board[row][column] == num
    end
    return true
end
    
def check_square_num(board, row, col, num)
    3.times do
        temp_col = col
        3.times do
            if board[row][temp_col] == '.'
                temp_col += 1
                next
            end
            return false if board[row][temp_col] == num
            temp_col += 1
        end
        row += 1
    end
    return true
end

def check_valid_num(board, row, col, num)
    return check_row_num(board, row, num) && check_column_num(board, col, num) && check_square_num(board, (row / 3) * 3, (col / 3) * 3, num)
end

def find_empty(board)
    for row in 0..8 do
        for col in 0..8 do
            return [row, col] if board[row][col] == '.'
        end
    end
    return []
end