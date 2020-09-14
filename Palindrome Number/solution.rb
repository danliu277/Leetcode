# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    return false if x < 0
    
    s = x.to_s.split('')
    result = true
    
    while s.length > 1 do
        if s[0] == s[-1]
            s.shift
            s.pop
        else
            result = false
            break
        end
    end
    
    return result
end