# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
    nums = nums.sort
    return n_sum(nums, target, 4)
end

def n_sum(nums, target, n)
    return [] if nums.length == 0 || (nums[0] * n > target) || (nums[-1] * n < target)
    return two_sum(nums, target) if n == 2
    result = []
    nums.each_with_index do |num, index|
        if index == 0 || nums[index - 1] != num
            n_sum(nums[index + 1..-1], target - num, n - 1).each do |res|
                result.push([num, res].flatten)
            end
        end
    end
    return result
end

def two_sum(nums, target)
    hash = Hash.new
    nums.each_with_index do |num, index|
        if hash[target - num]
            return [hash[target - num], index]
        else
            hash[num] = index
        end
    end
end