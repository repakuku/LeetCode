func rotate(_ nums: inout [Int], _ k: Int) {
    guard k > 0 else { return }
    
    for _ in 0..<k {
        var tempOne = nums[0]
        var tempTwo = nums[nums.count - 1]
        
        for index in 0..<nums.count - 1 {
            nums[index] = tempTwo
            if index == nums.count - 2 {
                nums[index + 1] = tempOne
            }
            tempTwo = tempOne
            tempOne = nums[index + 1]

        }
    }
}

var nums = [1, 2, 3, 4, 5, 6, 7]
var k = 3
rotate(&nums, k)
print(nums)

nums == [5,6,7,1,2,3,4]

nums = [-1,-100,3,99]
k = 2
rotate(&nums, k)
print(nums)

nums == [3,99,-1,-100]
