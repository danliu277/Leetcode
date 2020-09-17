# @param {String} s
# @return {Integer}
def roman_to_int(s)
    roman = {'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}
    result = 0
        
    s.each_char.with_index do |char, index|
        case char
            when 'I'
                if s[index + 1] == 'V'
                    result += 4
                elsif s[index + 1] == 'X'
                    result += 9
                else
                    result += 1
                end
            when 'V'
                if s[index - 1] == 'I' && index != 0
                    next
                else
                    result += 5
                end
            when 'X'
                if s[index + 1] == 'L'
                    result += 40
                elsif s[index + 1] == 'C'
                    result += 90
                elsif s[index - 1] == 'I' && index != 0
                    next
                else
                    result += 10
                end
            when 'L'
                if s[index - 1] == 'X' && index != 0
                    next
                else
                    result += 50
                end
            when 'C'
                if s[index + 1] == 'D'
                    result += 400
                elsif s[index + 1] == 'M'
                    result += 900
                elsif s[index - 1] == 'X' && index != 0
                    next
                else
                    result += 100
                end
            when 'D'
                if s[index - 1] == 'C' && index != 0
                    next
                else
                    result += 500
                end
            when 'M'
                if s[index - 1] == 'C' && index != 0
                    next
                else
                    result += 1000
                end
        end
    end

    return result
end