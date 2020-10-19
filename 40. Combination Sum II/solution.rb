# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum2(candidates, target)
    result = []
    current = []
    candidates = candidates.sort
    combination(candidates, target, current, 0, result)
    return result
end

def combination(candidates, target, current, start, result)
    return if target < 0
    if target == 0
        result.push(current.clone)
        return
    end
    prev = -1
    for i in start..candidates.length - 1
        if prev != candidates[i]
            current.push(candidates[i])
            combination(candidates, target - candidates[i], current, i + 1, result)
            current.pop()
            prev = candidates[i]
        end
    end
end