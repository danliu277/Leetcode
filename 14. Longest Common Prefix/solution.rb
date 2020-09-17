# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    result = ''
    return result if strs.length == 0
    index = 0
    length = strs.min_by(&:length).length
    match = true
    
    while match && index < length
        strs.each do |str|
            if str[index] != strs[0][index]
                match = false
            end
        end
        break if !match
        result += strs[0][index]
        index += 1
    end
    
    return result
end