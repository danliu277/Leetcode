# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    return 0 if nums.length == 0
    count = 0
    nums.each_with_index do |num, index|
        if nums[count] != num
            count += 1
            nums[count] = num
        end
    end
    return count + 1
end