# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    index = nums.find_index(target)
    return index ? index : -1
end