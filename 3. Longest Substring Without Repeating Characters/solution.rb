# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    result = i = j = 0
    len = s.length
    set = Set[]
    
    while i < len && j < len do
        if !set.include?(s[j])
            set.add(s[j])
            j+=1
            result = [result, j - i].max
        else
            set.delete(s[i])
            i+=1
        end
    end
    
    return result
end