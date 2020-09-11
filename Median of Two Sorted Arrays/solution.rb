# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    nums = (nums1 + nums2).sort
    
    if nums.length % 2 == 1
        return nums[(nums.length / 2)]
    else
        middle = nums.length / 2
        return (nums[middle].to_f + nums[middle - 1].to_f) / 2
    end
end