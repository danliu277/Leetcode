# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    if nums.length < 3
        return []
    end
    result = []
    
    nums = nums.sort
    index = 0
    while index < nums.length
        first_num = nums[index]
        second_index = index + 1
        third_index = nums.length - 1
        
        while second_index < third_index do
            sum = nums[second_index] + nums[third_index]
            if(sum < -first_num)
                second_index += 1
            elsif sum > -first_num
                third_index -= 1
            else
                result.push([first_num, nums[second_index], nums[third_index]])
                temp1 = second_index
                temp2 = third_index
                while second_index < third_index && nums[second_index] == nums[temp1]
                    second_index += 1
                end
                while third_index > second_index && nums[third_index] == nums[temp2]
                    third_index -= 1
                end
            end
        end
        while index + 1 < nums.length && nums[index + 1] == nums[index]
            index += 1
        end
        index += 1
    end
    
    return result
end