# @param {Integer} num
# @return {String}
def int_to_roman(num)
    result = ''
    roman = {1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M'}
    num = num.to_s.split('')
    
    num.each_with_index do |char, index|
        i = char.to_i
        case i
            when 1..3
                i.times do
                    result += roman[10 ** (num.length - 1 -index)]
                end
            when 4
                result += roman[10 ** (num.length - 1 -index)] + roman[5 * (10 ** (num.length - 1 -index))]
            when 5
                result += roman[5 * (10 ** (num.length - 1 -index))]
            when 5
                result += roman[5 * (10 ** (num.length - 1 -index))]
            when 6..8
                result += roman[5 * (10 ** (num.length - 1 -index))]
                (i-5).times do
                    result += roman[10 ** (num.length - 1 -index)]
                end
            when 9
                result += roman[10 ** (num.length - 1 -index)] + roman[10 * (10 ** (num.length - 1 -index))]
        end
    end
    
    return result
end