# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
    num = (dividend.to_f/divisor).to_s
    puts num
    num = num[0, num.index('.')].to_i
    if num >= 2147483648
        return 2147483647
    elsif num <= -2147483648
        return -2147483648
    else
        return num
    end
end