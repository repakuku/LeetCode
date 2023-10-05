func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard nums.count > 2 else { return nums.count }
    
    var isSecond = false
    let length = nums.count
    var k = 1
    
    for index in 1..<length {
        if nums[index] == nums[index - 1] && isSecond == false {
            isSecond = true
            nums[k] = nums[index]
            k += 1
        } else if nums[index] != nums[index - 1] {
            nums[k] = nums[index]
            isSecond = false
            k += 1
        }
    }
    
    return k
}

var nums = [0, 0, 1, 1, 1, 1, 2, 3, 3]
removeDuplicates(&nums)
print(nums)
