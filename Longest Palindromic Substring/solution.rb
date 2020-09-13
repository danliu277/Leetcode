# @param {String} s
# @return {String}
def longest_palindrome(s)
    return '' if s == nil || s.length == 0
    start = last = 0
    for i in 0..s.length - 1 do
        len1 = expandCenter(s, i, i)
        len2 = expandCenter(s, i, i+ 1)
        len = [len1, len2].max
        if len > (last - start + 1)
            start = i - ((len - 1) / 2)
            last = i + (len / 2)
        end
    end
    puts start, last
    return s[start..last]
end

def expandCenter(s, left, right) 
    while left >= 0 && right < s.length && s[left] == s[right] do
        left-=1
        right+=1
    end
    return right - left - 1
end