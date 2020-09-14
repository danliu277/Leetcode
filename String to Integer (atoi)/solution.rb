# @param {String} str
# @return {Integer}
def my_atoi(str)
    s = str.strip
    return 0 if !is_number?(s[0]) && s[0] != '-' && s[0] != '+'
    
    negative = s[0] == '-' ? true : false
    result = ''
    
    s = s.split('')
    if s[0] == '-' || s[0] == '+'
        s.shift
    end
    
    s.each do |char|
        if is_number?(char)
            result += char
        else
            break
        end
    end
    
    result = negative ? result.to_i * -1 : result.to_i
    if result > (2**31) - 1
        return (2**31) - 1
    elsif result < -(2**31)
        return -(2**31)
    else
        return result
    end
end

def is_number?(s)
  true if Float(s) rescue false
end