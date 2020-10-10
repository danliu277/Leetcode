# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
    first = nums.find_index(target)
    last = nums.rindex(target)
    return first ? [first,last] : [-1, -1]
end