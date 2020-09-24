# @param {String} s
# @return {Boolean}
def is_valid(s)
    stack = []
    valid = true
    s.split('').each do |char|
        if char == '(' || char == '{' || char == '['
            stack.push(char)
        elsif stack[stack.length - 1] == '(' && char == ')'
            stack.pop()
        elsif stack[stack.length - 1] == '{' && char == '}'
            stack.pop()
        elsif stack[stack.length - 1] == '[' && char == ']'
            stack.pop()
        else
            valid = false
            break
        end
    end
    return valid && stack.length == 0
end