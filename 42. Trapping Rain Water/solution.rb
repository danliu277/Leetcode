# @param {Integer[]} height
# @return {Integer}
def trap(height)
    result = 0
    
    left = 0
    right = 0
    
    low = 0
    high = height.length - 1
    
    while low <= high do
        if height[low] < height[high]
            if height[low] > left
                left = height[low]
            else
                result += left - height[low]
            end
            low += 1
        else
            if height[high] > right
                right = height[high]
            else
                result += right - height[high]
            end
            high -= 1
        end
    end
    
    return result
end