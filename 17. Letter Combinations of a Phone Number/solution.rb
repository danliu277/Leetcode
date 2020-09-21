# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
    phone = {'2' => ['a', 'b', 'c'], '3' => ['d', 'e', 'f'], '4' => ['g', 'h', 'i'], '5' => ['j', 'k', 'l'], '6' => ['m', 'n', 'o'], '7' => ['p', 'q', 'r', 's'], '8' => ['t', 'u', 'v'], '9' => ['w', 'x', 'y', 'z'],}
    result = []
    
    backtrack('', digits, result, phone) if digits && digits.length > 0
    
    return result
end

def backtrack(combination, next_digits, array, phone)
    if next_digits.length == 0
        array.push(combination)
    else
        phone[next_digits[0]].each do |letter|
            backtrack(combination + letter, next_digits[1..-1], array, phone)
        end
    end
end