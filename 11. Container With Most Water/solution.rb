# @param {Integer[]} height
# @return {Integer}
def max_area(height)
    result = left = 0
    right = height.length - 1
    
    while left < right do
        result = [result, [height[left], height[right]].min * (right - left)].max
        if height[left] < height[right]
            left += 1
        else
            right -= 1
        end
    end
    
    return result
end