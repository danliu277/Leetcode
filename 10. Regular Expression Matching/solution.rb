# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
    return s.empty? if p.empty?
        
    match = !s.empty? && (p[0] == s[0] || p[0] == '.')
        
    if p.length > 1 && p[1] == '*'
        return is_match(s, p[2..-1]) || (match && is_match(s[1..- 1], p))
    else
        return match && is_match(s[1..-1], p[1..-1])
    end
end