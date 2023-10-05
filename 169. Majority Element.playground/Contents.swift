func majorityElement1(_ nums: [Int]) -> Int {
    
    var dictionary: [Int: Int] = [:]
    var majority = 0
    var max = 0
    
    for number in nums {
        if dictionary[number] != nil {
            dictionary[number]! += 1
        } else {
            dictionary[number] = 1
        }
    }
    
    for (key, value) in dictionary {
        if value > max {
            max = value
            majority = key
        }
    }
    
    return majority
}

func majorityElement2(_ nums: [Int]) -> Int {
    
    var majority = 0
    var count = 0
    
    nums.forEach { number in
        if count == 0 {
            majority = number
            count += 1
        } else {
            count += majority == number ? 1 : -1
        }
    }
    
    return majority
}

var nums = [3, 2, 3]
majorityElement1(nums)
majorityElement2(nums)

nums = [2, 2, 1, 1, 1, 2, 2]
majorityElement1(nums)
majorityElement2(nums)
