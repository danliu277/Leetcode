# @param {Integer} n
# @return {String}
def count_and_say(n)
    result = '1'
    return result if n == 1
    for i in 2..n do
        puts 
        j = 0
        temp = ''
        current = ''
        count = 0
        while j < result.length do
            if current == ''
                current = result[j]
                count = 1
                j += 1
            elsif current == result[j]
                count += 1
                j += 1
            else
                temp += (count.to_s + current)
                current = ''
                count = 0
            end
        end
        temp += (count.to_s + current)
        result = temp
    end
    return result
end