# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    nums = (nums1 + nums2).sort
    
    while nums.length > 2
        nums.pop
        nums.shift
    end
    
    return nums.length > 1 ? (nums[0].to_f + nums[1].to_f) / 2 : nums[0]
end