# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    index = nums.length - 1
    nums.reverse_each do |num|
        nums.delete_at(index) if num == val
        index -= 1
    end
    return nums.length
end