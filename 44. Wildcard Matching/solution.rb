# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
    return true if s.length == 0 && p.length == 0
    j = 0
    start = -1
    index = -1
    
    for i in 0..s.length - 1 do
        if j < p.length && (p[j] == '?' || p[j] == s[i])
            i+=1
            j+=1
        elsif j < p.length && p[j]  == '*'
            start += j
            index = i
            j += 1
        elsif start != -1
            j = start + 1
            i = index + 1
            index += 1
        else
            return false
        end
    end
    
    while j < p.length && p[j] == '*' do
        j += 1
    end
    
    return j == p.length
end