# @param {String} s
# @return {Integer}
def longest_valid_parentheses(s)
    result = 0
    stack = [-1]
    s.split('').each_with_index do |char, index|
        if char == '('
            stack.push(index)
        else
            stack.pop()
            if(stack.empty?)
                stack.push(index)
            else
                result = [result, index - stack.last].max
            end
        end
    end
    return result
end