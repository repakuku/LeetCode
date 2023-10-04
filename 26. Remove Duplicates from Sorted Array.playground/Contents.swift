func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard nums.count > 1 else { return nums.count}
    
    let count = nums.count
    var k = 0
    
    for index in 1..<count {
        if nums[index - 1] != nums[index] {
            k += 1
            nums[k] = nums[index]
            
        }
    }
    
    return k + 1
}

var nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
removeDuplicates(&nums)

