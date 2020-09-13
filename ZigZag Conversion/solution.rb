# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
    return s if num_rows == 1
    
    result = ''
    cycle_len = (2 * num_rows) - 2
    i = 0
    
    while i < num_rows do
        j = 0
        while j + i < s.length do
            result += s[j + i]
            if i != 0 && i != num_rows - 1 && j + cycle_len - i < s.length
                result += s[j + cycle_len - i]
            end
            j += cycle_len
        end
        i+=1
    end
    
    return result
end