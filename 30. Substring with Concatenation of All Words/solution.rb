# @param {String} s
# @param {String[]} words
# @return {Integer[]}
def find_substring(s, words)
    result = []
    hash = Hash.new
    word_length = words[0].length
    index = 0
    
    words.each do |word|
        if hash[word]
            hash[word] = hash[word] + 1
        else
            hash[word] = 1
        end
    end
    
    while index < s.length
        hash_temp = hash.dup
        index_temp = index
        
        while index_temp < s.length
            sub_str = s[index_temp..index_temp + word_length - 1]
            
            if hash_temp[sub_str]
                if hash_temp[sub_str] > 1
                    hash_temp[sub_str] = hash_temp[sub_str] - 1
                else
                    hash_temp.delete(sub_str)
                    break if hash_temp.keys().length == 0
                end
            else
                break
            end
            
            index_temp += word_length
        end
        
        result.push(index) if hash_temp.keys().length == 0
        index += 1
        break if ((s.length - index) / word_length) < words.length
    end
    
    return result
end