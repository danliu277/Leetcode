# @param {Integer[]} nums
# @return {Integer}
def first_missing_positive(nums)
    nums = nums.sort
    result = 1
    nums.each do |num|
        result = num + 1 if num == result
    end
    return result
end