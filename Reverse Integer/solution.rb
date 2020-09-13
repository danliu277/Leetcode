# @param {Integer} x
# @return {Integer}
def reverse(x)
    stack = []
    negative = x < 0 ? true : false
    x.to_s.reverse.split('').each do |digit|
        stack.push(digit) if (stack.length == 1 && digit != 0) || digit != '-'
    end
    result = stack.reduce{|sum, n| sum+n }.to_i
    result = result * -1 if negative
    
    result > (2**31) - 1 || result < -(2**31) ? 0 : result
end