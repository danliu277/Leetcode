# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)
    result = []
    list = []
    combination(candidates, 0, target, 0, list, result)
    return result
end

def combination(candidates, start, target, sum, list, result)
    return if sum > target
    if sum == target
        result.push(list.clone)
        return
    end
    for i in start..(candidates.length - 1)
        list.push(candidates[i])
        combination(candidates, i, target, sum + candidates[i], list, result)
        list.pop()
    end
end