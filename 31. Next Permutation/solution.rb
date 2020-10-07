# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def next_permutation(nums)
    return nums if nums.length == 1
    
    index = nums.length - 2
    
    while index >= 0 && nums[index + 1] <= nums[index]
        index-=1
    end
    
    if index >= 0
        temp_index = nums.length - 1
        while temp_index >= 0 && nums[temp_index] <= nums[index]
            temp_index -= 1
        end
        swap(nums, index, temp_index)
    end
    
    reverse(nums, index + 1)
end

def swap(nums, x, y)
    temp = nums[x]
    nums[x] = nums[y]
    nums[y] = temp
end

def reverse(nums, start)
    index = start
    tail = nums.length - 1
    while index < tail
        swap(nums, index, tail)
        index += 1
        tail -= 1
    end
end