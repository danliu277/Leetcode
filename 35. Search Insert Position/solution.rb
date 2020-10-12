# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    index = 0
    while index < nums.length && nums[index] < target
        index += 1
    end
    return index
end