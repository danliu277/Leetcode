# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
    return [''] if n == 0
    result = []
    backtrack(result, "", 0, 0, n)
    return result
end

def backtrack(result, string, left, right, max)
    if string.length == max * 2 
        result.push(string)
        return
    end
    backtrack(result, (string + '('), (left + 1), right, max) if left < max
    backtrack(result, (string + ')'), left, (right + 1), max) if right < left
end