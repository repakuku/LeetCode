class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums.removeAll { $0 == val }
        return nums.count
    }
}

let solution = Solution()
var numbers = [0, 1, 2, 2, 3, 0, 4, 2]
let value = 2

solution.removeElement(&numbers, value)
print(numbers)
