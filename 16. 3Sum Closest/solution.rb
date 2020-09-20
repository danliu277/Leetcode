# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
    diff = 1 << 64
    nums = nums.sort
    i = 0
    
    while i < nums.length && diff != 0 do
        low = i + 1
        high = nums.length - 1
        while low < high
            sum = nums[i] + nums[low] + nums[high]
            if (target - sum).abs() < diff.abs()
                diff = target - sum
            end
            if sum < target
                low += 1
            else
                high -=1
            end
        end
        i+=1
    end
       
    return target - diff
end